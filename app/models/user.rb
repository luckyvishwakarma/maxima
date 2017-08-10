class User < ActiveRecord::Base	
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  mount_uploader :profile_image, ImageUploader   
  after_create :set_emp_id    
  #has_many :gallary, as: :imageable
  #accepts_nested_attributes_for :gallary

  GENDER = {:Male => 'male',
  					:Female => 'female'}

  def set_emp_id  	
		emp_id = "T0#{self.id}##{self.email.split("@").first}"
		self.update_attribute(:emp_id, emp_id)
  end	
end
