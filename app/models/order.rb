class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items, dependent: :destroy
  validates :status, inclusion: {in: ["open", "pending", "approved", "delivered", "cancelled"]}
end
