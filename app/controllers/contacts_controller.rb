class ContactsController < ApplicationController
  def index
    @contact = Contact.all
  end
end
