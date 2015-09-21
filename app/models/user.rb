class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  before_save { self.last_name.length == 1 ? self.last_name = self.last_name + "." : self.last_name = self.last_name }
  validates :first_name, presence: true, length: { minimum: 2, maximum: 20 }
  validates :last_name, presence: true, length: { minimum: 1, maximum: 20 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 105 },
            uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL_REGEX }
  validates :location, presence: true
end
