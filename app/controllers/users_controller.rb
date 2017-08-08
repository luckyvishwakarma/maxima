class UsersController < ApplicationController
	#before_action :authenticate_user!
	before_action :show , only: [:edit, :update]

	def show		
		@user = User.find params[:id]
	end
	
	def update		
		@user = @user.update_attributes(update_params)
		redirect_to user_path		
	end
	private
		def update_params	
			if params[:user][:password].present?
				params.require(:user).permit(:first_name, :last_name, :address, :dob, :qualification, :contact, :gender, :email, :password, :password_confirmation)
			else
				params.require(:user).permit(:first_name, :last_name, :address, :dob, :qualification, :contact, :gender, :email)
			end
		end

end
