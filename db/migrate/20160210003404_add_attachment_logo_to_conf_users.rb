class AddAttachmentLogoToConfUsers < ActiveRecord::Migration
  def self.up
    change_table :conf_users do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :conf_users, :logo
  end
end
