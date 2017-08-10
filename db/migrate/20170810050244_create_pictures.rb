class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
    	t.string :imageable_id
    	t.string :imageable_type
    	t.string :attachments, array:true, default: []
      t.timestamps null: false
    end
  end
end
