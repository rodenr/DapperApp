class AddMoreprofile < ActiveRecord::Migration
  def change
  	add_column :users, :interests, :string
  	add_column :users, :quotes, :string
  	add_column :users, :hometown, :string
  	add_column :users, :SEMT, :boolean, default: true
	end
end
