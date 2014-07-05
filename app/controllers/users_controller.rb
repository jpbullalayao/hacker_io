class UsersController < ApplicationController
	def index
	end

	def show
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:success] = "Welcome to hacker.io!"
			# Redirect to user show page
			redirect_to @user
		else
			render 'new'
		end
	end

	def edit
	end 

	def update
	end 

	def destroy 
	end

	private

		# STRONG PARAMETERS, USER SIGNUP FORM
		def user_params
			params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
		end
end
