class Service < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :subtitle

  belongs_to :service_section, optional: true
  
 def self.section(id)
  where(service_sections_id: id)
 end

end
