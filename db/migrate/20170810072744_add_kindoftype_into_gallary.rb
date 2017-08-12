class AddKindoftypeIntoGallary < ActiveRecord::Migration
  def change
  	add_column :gallaries, :kind_of_pic, :string
  end
end
