class Request < ApplicationRecord
  validate :, presence: true
  belongs_to :service
end
