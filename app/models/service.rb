class Service < ApplicationRecord
  validates :name, presence: true
  validates :city, presence: true
  validates :price, presence: true
  #validates :rating, inclusion: {in: [0, 1, 2, 3, 4, 5]}
end

