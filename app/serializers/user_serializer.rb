class UserSerializer < ActiveModel::Serializer
  attributes :id, :bank_account, :username

  # has_many :deadstocks
  # has_many :stocks, through: :deadstocks

  has_many :portfoliostocks
  has_many :stocks, through: :portfoliostocks


end
