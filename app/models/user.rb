class User < ApplicationRecord
<<<<<<< HEAD
=======
	before_save { self.email = email.downcase }
>>>>>>> sign-up
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },format: { with: VALID_EMAIL_REGEX }, 
  	uniqueness: { case_sensitive: false}
<<<<<<< HEAD
  	has_secure_password
=======
  	
  	has_secure_password
  	validates :password, presence: true, length: { minimum: 6 }
>>>>>>> sign-up
end