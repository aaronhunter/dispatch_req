class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @requests = @user.requests.paginate(page: params[:page])
  end
end
