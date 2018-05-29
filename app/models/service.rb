class Service < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :subtitle

  belongs_to :service_section
  
end
