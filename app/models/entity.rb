class Entity < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  has_many :groups

  def total_price
    transaction_prices = Entity.pluck(:amount)
    transaction_prices.sum
  end
end
