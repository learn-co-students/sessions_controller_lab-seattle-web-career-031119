class SessionsController < ApplicationController

  def index
  end

  def new
  end

  def create
    # byebug
    if params[:name] != nil && params[:name] != ""
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/sessions/new'
    end
    # byebug
  end

  def destroy
    session.delete :name
  end

  private
    def name_param
      params.require.permit(:name)
    end
end
