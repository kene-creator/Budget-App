class Group < ApplicationRecord
    include ImageUploader::Attachment(:icon)

  belongs_to :user, class_name: 'User'
  has_many :entities, dependent: :destroy

  validates :name, presence: true

  def total_price
    Entity.where(group_id: id).pluck(:amount).sum
  end
end
