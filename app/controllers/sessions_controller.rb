class SessionsController < ApplicationController
  def new 
  end

  def create
    user = Family.find_by(EntityID: params[:session][:EntityID])
    if user
      log_in user
      redirect_to user
    else
      flash[:danger] = 'ID not found!'
      render 'new'
    end
  end

  def destroy
  end

end
