class ServiceSection < ApplicationRecord
  validates_presence_of :title

  has_many :services

  def services_link(id)
    'services(id)_path'
  end
end
