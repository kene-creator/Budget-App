class User < ApplicationRecord
  after_create :set_default_role
  after_create :send_confirmation_email
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :entities
  has_many :groups

  validates :name, presence: true

  ROLES = %w[admin default].freeze

  def send_confirmation_email
    UserMailer.confirmation_email(self).deliver_now
  end

  private

  def set_default_role
    self.role = 'admin'
    save
  end
end
