class AddAttachmentImageToInventory < ActiveRecord::Migration
  def self.up
    change_table :inventories do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :inventories, :image
  end
end
