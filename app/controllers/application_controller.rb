class ApplicationController < ActionController::Base

def authorize_request(kind = nil)
    unless kind.include?(current_user.role)
        redirect_to news_path, notice: "Usted no esta autorizado para ejecutar esta accion"
    end
end
end
