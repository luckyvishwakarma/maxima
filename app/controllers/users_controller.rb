class UsersController < ApplicationController
  #before_action :authenticate_user!
  before_action :load_user , only: [:show, :update]

  def show
    @user = User.find params[:id]
    @gallary = Gallary.new
  end
  
  def update            
    @user.update_attributes(update_params)  
    redirect_to user_path   
  end

  private
    def update_params 
      if params[:user][:password].present?
        params.require(:user).permit(:first_name, :last_name, :address, :dob, :qualification, :contact, :gender, :email, :password, :password_confirmation, :profile_image)
      else
        params.require(:user).permit(:first_name, :last_name, :address, :dob, :qualification, :contact, :gender, :email, :profile_image)
      end
    end 

    def load_user
      @user = User.find params[:id]
    end

end
