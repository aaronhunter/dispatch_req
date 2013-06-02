class ProfilesController < ApplicationController
  before_filter :authenticate_user!

  def show
    @user = User.find(params[:id])
    @requests = @user.requests.paginate(page: params[:page])
  end

  def edit
    @user = User.find(params[:id])
  end
end
