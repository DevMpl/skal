module Skal
  module ApplicationHelper
    
	  def decorate(obj)
	    ActiveDecorator::Decorator.instance.decorate(obj)
	  end

	  def skal_t_ja(attr)
	    I18n.t("activerecord.attributes.skal/#{attr}")
	  end
    
	  def skal_get_message_type(type)
	    types = {"notice" => "success", "error" => "error", "alert" => "error"}
	    types[type]
	  end
    
    
    def skal_statuses
      {
        'private' => '非公開',
        'public' => '公開',
      }
    end
    
    
    
    def skal_event_statuses
      {
        'draft' => '下書き',
        'private' => '非公開',
        'public' => '公開',
      }
    end
    
  	def ska_datetime_format(time, format = '%Y年%m月%d日 %H時%I分')
  		time.strftime(format)
  	end
    
    def skal_root_path
      if request.domain =~ /mng/
        '/'
      else
        '/mng/'
      end
    end
    
		def method_missing method, *args, &block
      if method.in? Rails.application.routes.url_helpers.instance_methods
        main_app.send(method, *args)
      else
        super
      end
    end
    
  end
end
