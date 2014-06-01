class Admin::BaseController < ApplicationController
  before_filter :require_admin

  private
    def require_admin
      unless current_user.is_admin?
        flash.now[:alert] = "You must be an admin to access that page."
        redirect_to root_path
      end
    end
end
