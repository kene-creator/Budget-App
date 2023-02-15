class Group < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :entities

  def total_price
    Entity.where(group_id: id).pluck(:amount).sum
  end
end
