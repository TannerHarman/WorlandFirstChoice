class ContactsController < ApplicationController
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all, editor: :all
  def index
    @contact = Contact.all
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])

    respond_to do |format|
      if @contact.update(params.require(:contact).permit(:title, :phone_number, :fax_number, :email, :address, :main_img))
        format.html { redirect_to action: "index", notice: "Your contact information has been updated."}
      else
        format.html {render :edit}
      end
    end
  end
end
