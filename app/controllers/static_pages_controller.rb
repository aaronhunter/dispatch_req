class StaticPagesController < ApplicationController
  def home
    if user_signed_in?
      @user = current_user
      @requests = @user.requests.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end
end
