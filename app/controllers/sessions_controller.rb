class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    if user && user.authenticate(params[:session][:password])
      log_in user
      flash[:notice] = "已登录"
      redirect_to root_url
    else
      flash[:alert] = "无效的用户名或密码"
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
