module Bhf
  class Platform

    attr_accessor :pagination
    attr_reader :name, :objects, :title, :page_name

    def initialize(options, page_name, user = nil)
      @objects = []

      if options.is_a?(String)
        options = {options => nil}
      end
      @name = options.keys[0]
      @data = options.values[0] || {}
      @collection = get_collection

      human_title = if model.to_s == @name.singularize.camelize
        model.model_name.human
      else
        @name.humanize
      end

      @title = I18n.t("bhf.platforms.#{@name}.title", :platform_title => human_title, :default => human_title).pluralize
      @page_name = page_name
      @user = user
    end

    def search?
      table_options(:search) != false
    end

    def custom_columns?
      table_options(:columns).is_a?(Array)
    end
    
    def user_scope?
      @user && table_options(:user_scope)
    end

    def search_source
      table_options(:search) || :where
    end

    def prepare_objects(options, paginate_options = nil)
      if user_scope?
        chain = @user.send(table_options(:user_scope).to_sym)
      else
        chain = model
        chain = chain.send data_source if data_source
      end

      if options[:order]
        chain = chain.except(:order).order("#{options[:order]} #{options[:direction]}")
      end

      if search? && options[:search].present?
        chain = do_search(chain, options[:search])
      end

      if paginate_options && !sortable
        chain = chain.paginate(paginate_options)
      end
      
      if chain == model
        chain = chain.all
      end
      
      @objects = chain
    end

    def model
      return @data['model'].constantize if @data['model']
      @name.singularize.camelize.constantize
    end

    def model_name
      ActiveModel::Naming.singular(model)
    end

    def fields
      default_attrs(form_options(:display), @collection, false)
    end

    def columns
      default_attrs(table_options(:columns), @collection[0..5]).
      each_with_object([]) do |field, obj|
        obj << Bhf::Data::Column.new(field)
      end
    end

    def entries_per_page
      table_options(:per_page)
    end

    def has_file_upload?
      @collection.each do |field|
        return true if field.form_type == :file
      end
      false
    end

    def table
      @data['table']
    end

    def form
      @data['form']
    end

    def hooks(method)
      if @data['hooks'] && @data['hooks'][method.to_s]
        @data['hooks'][method.to_s].to_sym
      end
    end

    def columns_count
      columns.count + (sortable ? 2 : 1)
    end

    def sortable
      table_options 'sortable'
    end

    private

      def do_search(chain, search_term)
        search_condition = if table_options(:search)
          search_term
        else
          model.bhf_default_search(search_term)
        end

        chain.send search_source, search_condition
      end

      def data_source
        table_options(:source)
      end

      def default_attrs(attrs, d_attrs, warning = true)
        return d_attrs unless attrs

        model_respond_to?(attrs) if warning
        attrs.each_with_object([]) do |attr_name, obj|
          obj << (
            @collection.select{ |field| attr_name == field.name }[0] ||
            Bhf::Data::AbstractField.new({
              :name => attr_name,
              :type => table_options(:types, attr_name) || attr_name,
              :info => I18n.t("bhf.platforms.#{@name}.infos.#{attr_name}", :default => '')
            })
          )
        end
      end

      def get_collection
        all = {}

        model.columns_hash.each_pair do |name, props|
          next if name == sortable
          all[name] = Bhf::Data::Field.new(props, {
            :overwrite_type => form_options(:types, name),
            :overwrite_display_type => table_options(:types, name),
            :info => I18n.t("bhf.platforms.#{@name}.infos.#{name}", :default => '')
          }, model.primary_key)
        end

        model.reflections.each_pair do |name, props|
          all[name.to_s] = Bhf::Data::Reflection.new(props, {
            :overwrite_type => form_options(:types, name),
            :overwrite_display_type => table_options(:types, name),
            :info => I18n.t("bhf.platforms.#{@name}.infos.#{name}", :default => ''),
            :link => form_options(:links, name)
          })

          fk = all[name.to_s].reflection.primary_key_name
          if all.has_key?(fk)
            all.delete(fk)
          end
        end

        default_sort(all)
      end

      def default_sort(attrs)
        id = []
        static_dates = []
        output = []

        attrs.each_pair do |key, value|
          if key == model.primary_key
            id << value
          elsif key == 'created_at' || key == 'updated_at'
            static_dates << value
          else
            output << value
          end
        end

        id + output.sort_by(&:name) + static_dates
      end

      def model_respond_to?(field_names)
        new_obj = model.new
        field_names.each do |field_name|
          unless new_obj.respond_to?(field_name)
            raise Exception.new("Model '#{model}' does not respond to '#{field_name}'")
            return false
          end
        end
        true
      end

      def form_options(key, attribute = nil)
        lookup_options form, key, attribute
      end

      def table_options(key, attribute = nil)
        lookup_options table, key, attribute
      end

      def lookup_options(main_key, key, attribute = nil)
        if main_key
          if attribute == nil
            main_key[key.to_s]
          elsif main_key[key.to_s]
            main_key[key.to_s][attribute.to_s]
          end
        end
      end

  end
end