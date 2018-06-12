class Service < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :subtitle, :service_sections_id

  mount_uploader :thumb_img, ImageUploader
  mount_uploader :main_img, ImageUploader

  belongs_to :service_section, optional: true
  
 def self.section(id)
  where(service_sections_id: id)
 end

  def self.by_position
    order("position ASC")
  end
end
