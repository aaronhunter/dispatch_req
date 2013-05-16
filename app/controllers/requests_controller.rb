class RequestsController < ApplicationController
  def new
    @user = current_user
  end

  def show
    @request = Requests.find(params[:id])
    @user = current_user
  end
end
