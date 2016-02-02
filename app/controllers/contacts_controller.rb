class ContactsController < ApplicationController
  before_action :authenticate_admin!, except: [:new, :create]
  def new
    @contact = Contact.new
  end
  def create
    @contact = Contact.new post_params

    if @contact.save
      redirect_to root_path, notice: "Message successfully saved and sent"
    else
      render 'new', notice: "Something went awry.  I was unable to save the contact."
    end
  end
  def index
    @contacts = Contact.all.order("created_at desc").paginate(page: params[:page], per_page: 10)
  end
  private
    def post_params
      params.require(:contact).permit(:name, :email, :message)
    end
end
