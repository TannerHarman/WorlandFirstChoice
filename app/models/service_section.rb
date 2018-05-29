class ServiceSection < ApplicationRecord
  validates_presence_of :title

  has_many :services
end
