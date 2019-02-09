class DeadstockSerializer < ActiveModel::Serializer
  attributes :user_id, :stock_id
  belongs_to :user
  belongs_to :stock
end
