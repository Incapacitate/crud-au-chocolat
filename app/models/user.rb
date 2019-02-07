class User < ApplicationRecord

	has_secure_password
	has_many :gossips


  validates :email,
    presence: true,
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email address please" }
  validates :password, presence: true
  
end