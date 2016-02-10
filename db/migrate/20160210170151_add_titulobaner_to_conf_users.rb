class AddTitulobanerToConfUsers < ActiveRecord::Migration
  def change
    add_column :conf_users, :titulobaner, :string
  end
end
