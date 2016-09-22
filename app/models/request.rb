class Request < ApplicationRecord
  validate :, presence: true
  belongs_to :service
  belongs_to :buyer, class_name: "User"
  belongs_to :seller, class_name: "User"
end
