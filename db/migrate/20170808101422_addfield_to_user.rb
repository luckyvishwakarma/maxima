class AddfieldToUser < ActiveRecord::Migration
  def change
  	add_column :users, :contact, :string
  	add_column :users, :emp_id, :string
  	add_column :users, :status, :boolean, :default => true
  	add_column :users, :dob, :date
  	add_column :users, :qualification, :string
  	add_column :users, :profile_image, :string
  end
end
