class About < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates_presence_of :name, :greeting, :about_me

  after_initialize :set_defauls

  def set_defauls
   self.main_img ||= 'http://via.placeholder.com/600x400'
   self.thumb_img ||= 'http://via.placeholder.com/350x200'
  end
end