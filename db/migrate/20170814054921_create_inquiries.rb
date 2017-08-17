class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |t|
    	t.string :inq_name
    	t.string :inq_email
    	t.string :inq_subject
    	t.string :inq_message
      t.timestamps null: false
    end
  end
end
