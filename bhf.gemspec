# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "bhf"
  s.version = "0.4.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Anton Pawlik"]
  s.date = "2012-01-21"
  s.description = "Gets you there on time"
  s.email = "anton.pawlik@gmail.com"
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    "app/controllers/bhf/application_controller.rb",
    "app/controllers/bhf/embed_entries_controller.rb",
    "app/controllers/bhf/entries_controller.rb",
    "app/controllers/bhf/pages_controller.rb",
    "app/helpers/bhf/application_helper.rb",
    "app/helpers/bhf/entries_helper.rb",
    "app/helpers/bhf/pages_helper.rb",
    "app/views/bhf/_footer.haml",
    "app/views/bhf/_user.haml",
    "app/views/bhf/application/index.haml",
    "app/views/bhf/entries/_form.haml",
    "app/views/bhf/entries/_validation_errors.haml",
    "app/views/bhf/entries/edit.haml",
    "app/views/bhf/entries/form/belongs_to/_account_scope.haml",
    "app/views/bhf/entries/form/belongs_to/_radio.haml",
    "app/views/bhf/entries/form/belongs_to/_select.haml",
    "app/views/bhf/entries/form/belongs_to/_static.haml",
    "app/views/bhf/entries/form/column/_array.haml",
    "app/views/bhf/entries/form/column/_boolean.haml",
    "app/views/bhf/entries/form/column/_date.haml",
    "app/views/bhf/entries/form/column/_file.haml",
    "app/views/bhf/entries/form/column/_markdown.haml",
    "app/views/bhf/entries/form/column/_multiple_fields.haml",
    "app/views/bhf/entries/form/column/_number.haml",
    "app/views/bhf/entries/form/column/_password.haml",
    "app/views/bhf/entries/form/column/_static.haml",
    "app/views/bhf/entries/form/column/_string.haml",
    "app/views/bhf/entries/form/column/_text.haml",
    "app/views/bhf/entries/form/column/_wysiwyg.haml",
    "app/views/bhf/entries/form/embeds_many/_static.haml",
    "app/views/bhf/entries/form/embeds_one/_static.haml",
    "app/views/bhf/entries/form/has_and_belongs_to_many/_account_scope.haml",
    "app/views/bhf/entries/form/has_and_belongs_to_many/_check_box.haml",
    "app/views/bhf/entries/form/has_and_belongs_to_many/_static.haml",
    "app/views/bhf/entries/form/has_many/_static.haml",
    "app/views/bhf/entries/form/has_one/_account_scope.haml",
    "app/views/bhf/entries/form/has_one/_static.haml",
    "app/views/bhf/entries/new.haml",
    "app/views/bhf/helper/_field_errors.haml",
    "app/views/bhf/helper/_flash.haml",
    "app/views/bhf/helper/_frontend_edit.haml",
    "app/views/bhf/helper/_info.haml",
    "app/views/bhf/helper/_node.haml",
    "app/views/bhf/helper/_reflection_node.haml",
    "app/views/bhf/pages/_platform.haml",
    "app/views/bhf/pages/_search.haml",
    "app/views/bhf/pages/macro/belongs_to/_default.haml",
    "app/views/bhf/pages/macro/column/_array.haml",
    "app/views/bhf/pages/macro/column/_boolean.haml",
    "app/views/bhf/pages/macro/column/_date.haml",
    "app/views/bhf/pages/macro/column/_number.haml",
    "app/views/bhf/pages/macro/column/_primary_key.haml",
    "app/views/bhf/pages/macro/column/_string.haml",
    "app/views/bhf/pages/macro/column/_text.haml",
    "app/views/bhf/pages/macro/embeds_many/_default.haml",
    "app/views/bhf/pages/macro/embeds_one/_default.haml",
    "app/views/bhf/pages/macro/has_and_belongs_to_many/_default.haml",
    "app/views/bhf/pages/macro/has_many/_default.haml",
    "app/views/bhf/pages/macro/has_one/_default.haml",
    "app/views/bhf/pages/show.haml",
    "app/views/kaminari/bhf/_gap.html.haml",
    "app/views/kaminari/bhf/_next_page.html.haml",
    "app/views/kaminari/bhf/_page.html.haml",
    "app/views/kaminari/bhf/_paginator.html.haml",
    "app/views/kaminari/bhf/_prev_page.html.haml",
    "app/views/layouts/bhf/application.haml",
    "app/views/layouts/bhf/quick_edit.haml",
    "config/locales/de.yml",
    "config/locales/en.yml",
    "config/routes.rb",
    "lib/bhf.rb",
    "lib/bhf/active_record/active_record.rb",
    "lib/bhf/active_record/upload.rb",
    "lib/bhf/data.rb",
    "lib/bhf/form.rb",
    "lib/bhf/i18n.rb",
    "lib/bhf/mongoid/document.rb",
    "lib/bhf/pagination.rb",
    "lib/bhf/platform.rb",
    "lib/bhf/settings.rb",
    "lib/bhf/view_helpers.rb",
    "lib/engine.rb",
    "lib/rails/generators/bhf/templates/initializer.rb",
    "vendor/assets/images/bhf/ajax_loader.gif",
    "vendor/assets/images/bhf/bg.png",
    "vendor/assets/images/bhf/mooeditable-toolbarbuttons-tango.png",
    "vendor/assets/images/bhf/pictos.png",
    "vendor/assets/images/bhf/small_ajax_loader.gif",
    "vendor/assets/images/bhf/small_ajax_loader_h.gif",
    "vendor/assets/images/bhf/wmd-buttons.png",
    "vendor/assets/images/logo_bhf.png",
    "vendor/assets/javascripts/bhf/application.js",
    "vendor/assets/javascripts/bhf/classes/AjaxEdit.js",
    "vendor/assets/javascripts/bhf/classes/Ajaxify.js",
    "vendor/assets/javascripts/bhf/classes/ArrayFields.js",
    "vendor/assets/javascripts/bhf/classes/BrowserUpdate.js",
    "vendor/assets/javascripts/bhf/classes/Locale.de-DE.DatePicker.js",
    "vendor/assets/javascripts/bhf/classes/Locale.en-US.DatePicker.js",
    "vendor/assets/javascripts/bhf/classes/MooEditable.js",
    "vendor/assets/javascripts/bhf/classes/MultipleFields.js",
    "vendor/assets/javascripts/bhf/classes/Picker.js",
    "vendor/assets/javascripts/bhf/classes/Picker_Attach.js",
    "vendor/assets/javascripts/bhf/classes/Picker_Date.js",
    "vendor/assets/javascripts/bhf/includes/showdown.js",
    "vendor/assets/javascripts/bhf/includes/wmd.js",
    "vendor/assets/javascripts/bhf/mootools-more-1.4.0.1.js",
    "vendor/assets/stylesheets/bhf/MooEditable.css.scss",
    "vendor/assets/stylesheets/bhf/application.css.sass",
    "vendor/assets/stylesheets/bhf/functions.css.sass",
    "vendor/assets/stylesheets/bhf/reset.css.sass",
    "vendor/assets/stylesheets/bhf/typo.css.scss"
  ]
  s.homepage = "http://github.com/antpaw/bahnhof"
  s.require_paths = ["lib"]
  s.rubyforge_project = "nowarning"
  s.rubygems_version = "1.8.10"
  s.summary = "Agnostic rails backend"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.1.1"])
      s.add_runtime_dependency(%q<kaminari>, [">= 0.12.4"])
      s.add_runtime_dependency(%q<haml-rails>, [">= 0.3.4"])
      s.add_runtime_dependency(%q<sass-rails>, [">= 3.1.4"])
      s.add_runtime_dependency(%q<mootools-rails>, [">= 0.4"])
    else
      s.add_dependency(%q<rails>, [">= 3.1.1"])
      s.add_dependency(%q<kaminari>, [">= 0.12.4"])
      s.add_dependency(%q<haml-rails>, [">= 0.3.4"])
      s.add_dependency(%q<sass-rails>, [">= 3.1.4"])
      s.add_dependency(%q<mootools-rails>, [">= 0.4"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.1.1"])
    s.add_dependency(%q<kaminari>, [">= 0.12.4"])
    s.add_dependency(%q<haml-rails>, [">= 0.3.4"])
    s.add_dependency(%q<sass-rails>, [">= 3.1.4"])
    s.add_dependency(%q<mootools-rails>, [">= 0.4"])
  end
end

