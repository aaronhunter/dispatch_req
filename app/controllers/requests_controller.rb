class RequestsController < ApplicationController

  def new
    @user = current_user
    @request = current_user.requests.build
  end

  def create
    @request = current_user.requests.build(params[:request])
    if @request.save
      flash[:success] = "Dispatch created!"
      redirect_to profile_path(current_user.id)
    else
      render 'requests/new'
    end
  end

  def show
    @request = Request.find(params[:id])
    @user = current_user
  end
end
