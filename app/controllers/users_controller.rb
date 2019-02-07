class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		puts params
		@user = User.new(surname: params[:surname], email: params[:email], city: params[:city], age: params[:age])
		
		if @user.save 
			session[:user_id] = @user.id
			redirect_to root_path, :notice => "Bienvenue, gros #{@user.surname} !"

		else render 'new'
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end
end
