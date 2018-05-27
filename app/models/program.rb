class Program < ApplicationRecord
  validates_presence_of :title, :subtitle, :description, :price
end
