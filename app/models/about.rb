class About < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  # validates_presence_of :name, :greeting, :about_me

  mount_uploader :thumb_img, ImageUploader
  mount_uploader :main_img, ImageUploader

  def self.by_position
    order("position ASC")
  end

  after_initialize :set_defauls

  def set_defauls
   self.main_img ||= 'http://via.placeholder.com/600x400'
   self.thumb_img ||= 'http://via.placeholder.com/350x200'
  end
end