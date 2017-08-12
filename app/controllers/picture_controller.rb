class PictureController < ApplicationController

	def remove_pics
		if params[:pic_ids].present?
			Picture.where(:id => params[:pic_ids]).destroy_all		
		else
			flash[:error] = "Select Images"
		end
	end

end
