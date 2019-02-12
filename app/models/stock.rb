class Stock < ApplicationRecord
  # has_many :deadstocks
  # has_many :users, through: :deadstocks
  # validates_uniqueness_of :symbol, scope: [:semester_id, :class_id]

  has_many :portfoliostocks
  has_many :users, through: :portfoliostocks
  # 
  # def average_cost
  #
  # end
end
