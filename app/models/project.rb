class Project < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: :slugged

  has_attached_file :image, styles: { large: "1280x1280>", medium: "300x300>", thumb: "200x200#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  has_attached_file :logoimage, styles: { medium: "300x300>", thumb: "200x200>" }
  validates_attachment_content_type :logoimage, content_type: /\Aimage\/.*\Z/
end
