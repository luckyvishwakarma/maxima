module FaqsHelper
	def find_admin_hr_email
		@users = []
		 Role.where(name: [ 'HR', 'ADMIN']).each do |role|			
			role.users.each {|r| @users.push(r) } if role.users.present?
		end		
		@users
	end

	def email_of(id)	
		User.find(id).email
	end
end
