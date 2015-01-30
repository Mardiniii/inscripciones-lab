class AddAttachmentAvatarToRegisters < ActiveRecord::Migration
  def self.up
    change_table :registers do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :registers, :avatar
  end
end
