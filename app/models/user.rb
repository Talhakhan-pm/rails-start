class User < ApplicationRecord
  before_save {self.email= email.downcase}
  before_save {self.username= username.downcase}
  has_many :cars
  validates :username, presence: true, 
    uniqueness: { case_sensitive: false }, length: {minimum:3, maximum:25 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    
  validates :email, presence: true, 
    length: { maximum:25 }, uniqueness: { case_sensitive: false },
    format: {with: VALID_EMAIL_REGEX }

  has_secure_password
end