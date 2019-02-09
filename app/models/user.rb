class User < ApplicationRecord
  has_secure_password

  has_many :portfoliostocks
  has_many :stocks, through: :portfoliostocks

  validates :username, uniqueness: { case_sensitive: false }

  has_many :deadstocks
  has_many :stocks, through: :deadstocks
  
end
