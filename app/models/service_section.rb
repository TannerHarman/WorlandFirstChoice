class ServiceSection < ApplicationRecord
  validates_presence_of :title

  extend FriendlyId
  friendly_id :title, use: :slugged

  has_many :services

end
