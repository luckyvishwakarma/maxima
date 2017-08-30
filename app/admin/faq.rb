ActiveAdmin.register Faq do
permit_params :question,:answer, :category,:question_from_id,:question_to_id,:user_id
index do 
		selectable_column
		column :id
		column :question
		column :answer
		column :category 
		column :user_id
		end
end
