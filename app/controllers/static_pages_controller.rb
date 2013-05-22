class StaticPagesController < ApplicationController
  def home
    if user_signed_in?
      @user = current_user
      @requests = Request.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end
end
