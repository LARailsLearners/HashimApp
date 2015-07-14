ActiveAdmin.register Product do
	permit_params :firstname, :lastname, :email, :password, :password_confirmation, :admin

	index do
		column :name
		column :description
		column :cost
		column :user_id
		actions
	end
	filter :cost

	form do |f|
		f.inputs "User Details" do
			f.input :name
			f.input :description
			f.input "Price", sortable: :cost do |product|
				number_to_currency product.cost
				puts product.cost
			end
			f.input :user_id, as: :select, collection: User.pluck(:firstname,:id)
			
		end
		f.actions
	end

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
