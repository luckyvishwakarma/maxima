class Changetypeintogallary < ActiveRecord::Migration
  def up
    change_column :gallaries, :type, :string
  end

  def down
    change_column :gallaries, :type,  :string
  end 
end
