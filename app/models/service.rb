class Service < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :subtitle

  belongs_to :service_section, optional: true
  
 def self.section(id)
  where(service_sections_id: id)
 end

 after_initialize :set_defauls

 def set_defauls
  self.main_img ||= 'http://via.placeholder.com/600x400'
  self.thumb_img ||= 'http://via.placeholder.com/350x200'
 end

end
