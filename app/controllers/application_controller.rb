class ApplicationController < ActionController::Base
  before_action :method_name
  def method_name
    #raise (params[:controller] == 'home' && params[:action] == 'index').to_json
  end
end
