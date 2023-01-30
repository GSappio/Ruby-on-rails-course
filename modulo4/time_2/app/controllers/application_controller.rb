class ApplicationController < ActionController::Base
    layout :layout_by_resource

    private

    def layout_by_resource
        puts ">>>>>>>>>>> #{devise_controller?}" 
        puts ">>>>>>>>>>> #{resource_class}"
        "application"       
    end
end
