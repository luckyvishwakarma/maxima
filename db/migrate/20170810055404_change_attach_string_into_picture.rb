class ChangeAttachStringIntoPicture < ActiveRecord::Migration 
  def up
    change_column :pictures, :attachments, :string
  end

  def down
    change_column :pictures, :attachments,  array:true, default: []
  end  
end
