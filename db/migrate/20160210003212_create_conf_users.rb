class CreateConfUsers < ActiveRecord::Migration
  def change
    create_table :conf_users do |t|
      t.string :slogan
      t.string :name
      t.string :color_1
      t.string :color_2

      t.timestamps null: false
    end
  end
end
