class ServiceSection < ApplicationRecord
  validates_presence_of :title

  extend FriendlyId
  friendly_id :title, use: :slugged

  has_many :services

  after_initialize :set_defauls

  def set_defauls
   self.main_img ||= 'http://via.placeholder.com/350x200'
  end

end
