class UsersController < ApplicationController
	
	def index
		@users = User.all
	end

	def new
	  @user = User.new
	end

	def create 
	  @user = User.new(user_params) 
	  if @user.save 
	    session[:user_id] = @user.id 
	    redirect_to users_show_path
	  else 
	    redirect_to signup_path
	  end 
	end

	def show
	end

	def edit
		@user = User.new(user_params)
		@user.save
	end

	

    def update
    respond_to do |format|
      if @user.update(user_params)
        redirect_to @user, notice: 'User was successfully updated.' 
      else
        render :edit 
      end
    end
  end

	def destroy
		@user.destroy
    respond_to do |format|
      redirect_to users_url, notice: 'User was successfully destroyed.' 
    end
	end

	private
		def set_user
			@user = User.find(params[:user_id])
		end

	  def user_params
	    params.require(:user).permit(:first_name, :last_name, :email, :password, :country_code,
	    	:phone_number, :home_address, :work_address, :terms)
  	end
end
