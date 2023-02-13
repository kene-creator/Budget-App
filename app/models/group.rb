class Group < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :entities
end
