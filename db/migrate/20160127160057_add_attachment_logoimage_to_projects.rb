class AddAttachmentLogoimageToProjects < ActiveRecord::Migration
  def up
    add_attachment :projects, :logoimage
  end

  def down
    remove_attachment :projects, :logoimage
  end
end
