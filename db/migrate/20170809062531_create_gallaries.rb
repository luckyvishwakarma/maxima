class CreateGallaries < ActiveRecord::Migration
  def change
    create_table :gallaries do |t|
    	t.string :type    	
      t.timestamps null: false
    end
  end
end
