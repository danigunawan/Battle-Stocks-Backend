class PortfoliostockSerializer < ActiveModel::Serializer
  attributes :user_id, :stock_id, :win, :owned
  belongs_to :user
  belongs_to :stock
end
