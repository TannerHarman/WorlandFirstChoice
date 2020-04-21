class Contact < ApplicationRecord
  validates :phone_number, :fax_number, numericality: true
  validates_presence_of :title, :phone_number, :fax_number, :email, :address
end