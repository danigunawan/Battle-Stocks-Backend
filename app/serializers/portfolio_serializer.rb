class PortfolioSerializer < ActiveModel::Serializer
  attributes :symbol, :shares, :user_id, :stock_id
  belongs_to :user
  belongs_to :stock
end
