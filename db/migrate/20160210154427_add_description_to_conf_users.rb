class AddDescriptionToConfUsers < ActiveRecord::Migration
  def change
    add_column :conf_users, :description, :text
  end
end
