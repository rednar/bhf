# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "bhf"
  s.version = "0.6.20"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Anton Pawlik"]
  s.date = "2013-12-18"
  s.description = "Gets you there on time"
  s.email = "anton.pawlik@gmail.com"
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    "app/assets/images/bhf/ajax_loader.gif",
    "app/assets/images/bhf/bg.png",
    "app/assets/images/bhf/mooeditable-toolbarbuttons-tango.png",
    "app/assets/images/bhf/pictos.png",
    "app/assets/images/bhf/pictos_2x.png",
    "app/assets/images/bhf/small_ajax_loader.gif",
    "app/assets/images/bhf/small_ajax_loader_h.gif",
    "app/assets/images/bhf/wmd-buttons.png",
    "app/assets/images/logo_bhf.svg",
    "app/assets/javascripts/bhf/application.js",
    "app/assets/javascripts/bhf/classes/AjaxEdit.js",
    "app/assets/javascripts/bhf/classes/AjaxEditStack.js",
    "app/assets/javascripts/bhf/classes/Ajaxify.js",
    "app/assets/javascripts/bhf/classes/ArrayFields.js",
    "app/assets/javascripts/bhf/classes/FormHelper.js",
    "app/assets/javascripts/bhf/classes/Locale.de-DE.js",
    "app/assets/javascripts/bhf/classes/Locale.en-US.js",
    "app/assets/javascripts/bhf/classes/MooEditable.js",
    "app/assets/javascripts/bhf/classes/MultipleFields.js",
    "app/assets/javascripts/bhf/classes/Picker.js",
    "app/assets/javascripts/bhf/classes/Picker_Attach.js",
    "app/assets/javascripts/bhf/classes/Picker_Date.js",
    "app/assets/javascripts/bhf/classes/PlatformHelper.js",
    "app/assets/javascripts/bhf/classes/Setlatlng.js",
    "app/assets/javascripts/bhf/classes/showdown.js",
    "app/assets/javascripts/bhf/classes/wmd.js",
    "app/assets/javascripts/bhf/mootools-core-1.4.5-full-compat.js",
    "app/assets/javascripts/bhf/mootools-more-1.4.0.1.js",
    "app/assets/javascripts/bhf/mootools_ujs.js",
    "app/assets/stylesheets/bhf/MooEditable.css.scss",
    "app/assets/stylesheets/bhf/application.css.sass",
    "app/assets/stylesheets/bhf/functions.css.sass",
    "app/assets/stylesheets/bhf/reset.css.sass",
    "app/assets/stylesheets/bhf/typo.css.scss",
    "app/controllers/bhf/application_controller.rb",
    "app/controllers/bhf/embed_entries_controller.rb",
    "app/controllers/bhf/entries_controller.rb",
    "app/controllers/bhf/pages_controller.rb",
    "app/helpers/bhf/application_helper.rb",
    "app/helpers/bhf/entries_helper.rb",
    "app/helpers/bhf/frontend_helper.rb",
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
    "app/views/bhf/entries/form/column/_hash.haml",
    "app/views/bhf/entries/form/column/_mappin.haml",
    "app/views/bhf/entries/form/column/_markdown.haml",
    "app/views/bhf/entries/form/column/_multiple_fields.haml",
    "app/views/bhf/entries/form/column/_number.haml",
    "app/views/bhf/entries/form/column/_paperclip.haml",
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
    "app/views/bhf/entries/show.haml",
    "app/views/bhf/helper/_definition_item.haml",
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
    "app/views/bhf/pages/macro/column/_file.haml",
    "app/views/bhf/pages/macro/column/_hash.haml",
    "app/views/bhf/pages/macro/column/_image.haml",
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
<<<<<<< HEAD
=======
    "lib/initializer/bhf.rb",
>>>>>>> routes
    "lib/rails/generators/bhf/templates/initializer.rb"
  ]
  s.homepage = "http://github.com/antpaw/bhf"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "nowarning"
  s.rubygems_version = "2.0.3"
  s.summary = "Agnostic Rails backend"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 4.0.0"])
      s.add_runtime_dependency(%q<turbolinks>, [">= 1.3.0"])
      s.add_runtime_dependency(%q<kaminari>, [">= 0.12.4"])
      s.add_runtime_dependency(%q<haml-rails>, [">= 0.4.0"])
      s.add_runtime_dependency(%q<sass-rails>, [">= 4.0.0"])
    else
      s.add_dependency(%q<rails>, [">= 4.0.0"])
      s.add_dependency(%q<turbolinks>, [">= 1.3.0"])
      s.add_dependency(%q<kaminari>, [">= 0.12.4"])
      s.add_dependency(%q<haml-rails>, [">= 0.4.0"])
      s.add_dependency(%q<sass-rails>, [">= 4.0.0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 4.0.0"])
    s.add_dependency(%q<turbolinks>, [">= 1.3.0"])
    s.add_dependency(%q<kaminari>, [">= 0.12.4"])
    s.add_dependency(%q<haml-rails>, [">= 0.4.0"])
    s.add_dependency(%q<sass-rails>, [">= 4.0.0"])
  end
end

