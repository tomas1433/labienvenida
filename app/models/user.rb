class User < ApplicationRecord
  has_many :services
  has_attachment :avatar
  has_attachment :phone
  has_many :sales, class_name: "Request", foreign_key: "seller_id"
  has_many :purchases, class_name: "Request", foreign_key: "buyer_id"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :phone, presence: true

end
