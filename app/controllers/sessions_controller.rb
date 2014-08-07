class SessionsController < ApplicationController
	def new
	end 

	def create
		user = User.find_by_email(params[:session][:email])
		if user && user.authenticate(params[:session][:password])
		else
			flash.now[:error] = 'Invalid email/password combination' # 誤りあり!
      render 'new'
		end 
	end 

	def destroy
	end 
end
