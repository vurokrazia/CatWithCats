class HomeController < ApplicationController
  def index
    if user_signed_in?
      unless  current_user.available?
        current_user.update(available:true)
      end
    end
    @users = User.where(available:true)
  end
end
