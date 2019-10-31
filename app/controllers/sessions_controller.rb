class SessionsController < ApplicationController

include SessionsHelper

def new
end

def create

user = User.find_by(email: params[:email])

if user && user.authenticate(params[:password])
session[:user_id] = user.id
redirect_to gossips_path

else
flash.now[:danger] = "Wrong mail/password combination"
render 'sessions/new'
end
end

def destroy
if sessions.delete(:user_id)
redirect_to gossips_path
end
end

