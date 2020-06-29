class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true
  
  include Encryptable
  attr_encrypted :api_token, :api_secret


end
