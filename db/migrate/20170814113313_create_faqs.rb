class CreateFaqs < ActiveRecord::Migration
  def change
    create_table :faqs do |t|
    	t.string :question
    	t.string :answer
    	t.string :category
    	t.string :question_from_id
    	t.string :question_to_id
    	t.string :user_id  
      t.timestamps null: false
    end
  end
end
