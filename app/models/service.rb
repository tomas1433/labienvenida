class Service < ApplicationRecord
  has_attachment :photo
  belongs_to :user

  validates :user, presence: true
  validates :name, presence: true
  validates :city, presence: true
  validates :price, presence: true
  validates :category, presence:true, inclusion: { in: %w(Check-in Check-out Limpieza), message: "%{value} no es una entrada correcta" }
  #validates :rating, inclusion: {in: [0, 1, 2, 3, 4, 5]}
end

