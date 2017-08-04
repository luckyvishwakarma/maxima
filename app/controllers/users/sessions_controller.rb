module Users
  class SessionsController < Devise::SessionsController   
  	layout 'login_template'
  	def after_sign_out_path_for(resource)
  		new_user_session_path
		end
  end
end