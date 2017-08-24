class User < ApplicationRecord

  before_save { self.email = email.downcase } # create all email character lower case
  validates :name, presence: true, length: { maximum: 50 } # validation for name must persence maximum length 50 character

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+[a-z]+\z/i # key of regex
  validates :email, presence: true, length: { maximum: 255 }, # validation for email must persence maximum length 255 character
                    format: { with: VALID_EMAIL_REGEX }, # not allow if not email format
                    uniqueness: { case_sensitive: false } # unique that not case sensitive

  has_secure_password # all data paramater will encrypt

  validates :password, presence: true, length: { minimum: 6 } #validation for password must persence minimum length 6 character
end
