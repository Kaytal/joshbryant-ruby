class ContactMailer < ApplicationMailer
  default from: "no-reply@joshbryant.me"
  default to: "kaytal@gmail.com"

  def new_contact(contact)
    @contact = contact
    mail(subject: "New Contact on JoshBryant.me #{contact.name}")
  end
end
