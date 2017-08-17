class HomeController < ApplicationController
	def dashboard
	end
	def contact
		@inquiry = Inquiry.new
	end

	def create		
		@inquiry = Inquiry.new(inquiry_params)
		if @inquiry.save
			redirect_to contact_home_index_path
			flash[:success] = "Thanku for join us."  
		else
			flash[:error] = "Something went wrong."  
		end
	end	
	private
    def inquiry_params
      params.require(:inquiry).permit(:inq_name, :inq_email, :inq_subject, :inq_message)
    end
end
