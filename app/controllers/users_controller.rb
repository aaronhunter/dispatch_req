class UsersController < Devise::SessionsController

  def show
    @user = User.find(params[:id])
  end
end
