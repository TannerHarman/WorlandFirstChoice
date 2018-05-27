class About < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates_presence_of :name, :greeting, :about_me
end