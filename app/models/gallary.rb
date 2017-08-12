class Gallary < ActiveRecord::Base
  has_many :pictures, as: :imageable
  accepts_nested_attributes_for :pictures	

  scope :picnic, -> {where(kind_of_pic: 'picnic')}
  scope :innogration, -> {where(kind_of_pic: 'innogration')}
  scope :birthday, -> {where(kind_of_pic: 'birthday')}
end
