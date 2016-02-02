class Contact < ActiveRecord::Base
  after_create :send_notification
  def send_notification
    ContactMailer.new_contact(self).deliver
  end
end
