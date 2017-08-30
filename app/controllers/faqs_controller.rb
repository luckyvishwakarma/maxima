class FaqsController < ApplicationController
	before_action :load_faq, only: [:view_answer,:edit, :update,:destroy]
	def index
		@faq = Faq.new
	end

	def show
		@faqs = current_user.faqs			
	end 

	def create			
		@faq =  current_user.faqs.new(faq_params)
		@faq.question_from_id = current_user.id
		if @faq.save
			redirect_to faq_path(current_user)
			flash[:success] = "Successfully send"
		else
			flash[:error] = "Something went wrong"
		end

	end

	def view_answer
	end

	def edit
	end

	def update		
		@faq.update_attributes(faq_params)
		redirect_to faq_path(current_user)
	end

	def destroy	
		if @faq.destroy
			redirect_to faq_path(current_user)
		end
	end

	private
	def faq_params
		params.require(:faq).permit(:question_to_id, :category, :question)
	end

	def load_faq
		@faq = Faq.find params[:id]
	end


end
