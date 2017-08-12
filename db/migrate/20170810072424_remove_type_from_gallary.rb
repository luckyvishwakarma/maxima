class RemoveTypeFromGallary < ActiveRecord::Migration
  def change
  	remove_column :gallaries, :type
  end
end
