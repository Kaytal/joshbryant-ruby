class AddAttachmentLogoimageToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :logoimage
    end
  end

  def self.down
    remove_attachment :projects, :logoimage
  end
end
