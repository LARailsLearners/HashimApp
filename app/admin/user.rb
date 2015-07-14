ActiveAdmin.register User do
	permit_params :firstname, :lastname, :email, :password, :password_confirmation, :admin

	index do
		column :firstname
		column :lastname
		column :email
		column :current_sign_in_at
		column :last_sign_in_at
		column :sign_in_count
		column :admin
		actions
	end
	filter :email

	form do |f|
		f.inputs "User Details" do
			f.input :firstname
			f.input :lastname
			f.input :email
			f.input :password
			f.input :password_confirmation
			f.input :admin, as: :radio, collection: {User: 0, Administrator: 1}
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
