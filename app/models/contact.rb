class Contact < ApplicationRecord

  validates_presence_of :title, :phone_number, :fax_number, :email, :address
end
