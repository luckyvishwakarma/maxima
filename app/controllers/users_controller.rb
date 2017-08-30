class UsersController < ApplicationController
  #before_action :authenticate_user!
  before_action :load_user , only: [:show, :update]
  respond_to :json
  def show
    @user = User.find params[:id]
    @gallary = Gallary.new
  end
  
  def update              
    @user.update_attributes(update_params)  
    redirect_to user_path   
  end


  def get_events
    @task = current_user.tasks
    events = []
    @task.each do |task|
      events << {:id => task.id, :title => "#{task.taskable.try(:name)} : #{task.task}", :start => "#{task.planned_start_date}",:end => "#{task.planned_end_date}" }
    end
    render :text => events.to_json
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
