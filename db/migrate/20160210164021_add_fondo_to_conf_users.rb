class AddFondoToConfUsers < ActiveRecord::Migration
  def change
    add_column :conf_users, :fondo, :string
  end
end
