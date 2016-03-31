require "nokogiri"
require "kaminari"
require "simple_form"
require "semantic-ui-sass"
require "rmagick"
require "jquery-rails"
require "jquery-ui-rails"
require "mini_magick"
require "carrierwave"
require "jquery-fileupload-rails"
require "sanitize"
require "ckeditor"
require "ransack"
require "better_errors"
require "pry"
require "rails_engine_decorators"
require "faker"

module Skal
  class Engine < ::Rails::Engine
    isolate_namespace Skal
    
		paths["config/initializers"] # => ["config/initializers"]
	  paths["config/locales"]      # => ["config/locales"]
		
    #自分のローカル時間を記録
    config.time_zone = 'Tokyo'

    #Active Record Timezone
    config.active_record.default_timezone = :local
		
		config.autoload_paths += %W(#{config.root}/app/models/skal/module #{config.root}/app/uploaders/skal)
		# config.assets.precompile += %w( ckeditor/* fonts/* images/* datetimepicker/* jquery.treeview/*)

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]

		config.i18n.default_locale = :ja
		config.assets.compress = false
		config.assets.debug = true
    
  end
end
