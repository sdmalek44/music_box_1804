class User < ApplicationRecord
  validates_presence_of :password_digest, :username
  validates_uniqueness_of :username

  has_secure_password
end
