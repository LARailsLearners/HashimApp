class AddAdminToUser < ActiveRecord::Migration
  def change
  	add_column :users, :admin, :integer, default: 0
  	add_index  :users, :admin
  end
end
