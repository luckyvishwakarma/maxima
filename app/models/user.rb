class User < ActiveRecord::Base	
  rolify
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :profile_image, ImageUploader 
  has_many :faqs, :dependent => :destroy

  after_create :set_emp_id_and_role   
  

  GENDER = {:Male => 'male',
  					:Female => 'female'}

  def set_emp_id_and_role  	
		emp_id = "T0#{self.id}##{self.email.split("@").first}"
		self.update_attribute(:emp_id, emp_id)
    self.add_role(:DEVELOPER) if self.roles.blank?
  end	

  def full_name
    "#{first_name} #{last_name}"
  end
 
end
