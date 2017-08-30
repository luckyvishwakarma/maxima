ActiveAdmin.register User do
config.filters = false

permit_params :email, :first_name,:last_name,
 :address, :gender,:designation,:department,:contact,:emp_id,:dob,:qualification,:profile_image,:status

	index do 
		selectable_column
		column :id
		column :emp_id
		column :email
		column :first_name 
		column :last_name
		column :designation
		column :department
		column :contact
		column :dob
		column :status
		column :profile_image
		column :full_name
		actions
	end

	menu :parent => "User", :label => "Emails"

  collection_action :get_emails, :method => :get do
    redirect_to "/" # just for testing
  end

  action_item do
     link_to('Emails', 'users/get_emails')
  end
	

  controller do
  	def get_emails
  		@users = User.pluck:email 
  		#redirect_to users_path
  	end
  end


end


