class UsersController < ApplicationController
  
  def show
  	@user = User.find(params[:id])
  	
  end

  def new
  	@user = User.new
  end

  def create
    @user = User.new(params[:user])        # Не окончательная реализация!
    if @user.save
     # Обработать успешное сохранение.
    else
    render 'new'
    end
  end
end
