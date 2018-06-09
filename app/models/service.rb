class Service < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :subtitle

  mount_uploader :thumb_img, ImageUploader
  mount_uploader :main_img, ImageUploader

  belongs_to :service_section, optional: true
  
 def self.section(id)
  where(service_sections_id: id)
 end

def self.by_position
  order("position ASC")
end

 after_initialize :set_defauls

 def set_defauls
  self.main_img ||= 'http://via.placeholder.com/600x400'
  self.thumb_img ||= 'http://via.placeholder.com/350x200'
 end

end
