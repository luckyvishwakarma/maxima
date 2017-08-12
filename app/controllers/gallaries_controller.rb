class GallariesController < ApplicationController
  def index
    @gallary = Gallary.new
    @gallary_picnic = Gallary.picnic
    @gallary_innogration = Gallary.innogration
    @gallary_birthday = Gallary.birthday
  end

  def new
  end

  def create  
    @gallary = Gallary.new(gallary_params)    
      if @gallary.save
        if params[:pictures]['attachments'].present? 
        params[:pictures]['attachments'].each { |pic|
          @picture = @gallary.pictures.create!(:attachments => pic)}  
          flash[:success] = "Gallary was successfully created."     
          redirect_to gallaries_path
        else
          flash[:error] = "Select file."
        end
      else
        flash[:error] = "Something went wrong"
      end     
  end

  def show
  end
  

  private
    def gallary_params
      params.require(:gallary).permit(:kind_of_pic, pictures_attributes: [:attachments])
    end
end
