class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items, dependent: :destroy
  validates :status, inclusion: {in: ["open", "pending", "approved", "delivered", "cancelled"]}

  def price
    total = 0
    order_items.each do |order_item|
      total += (order_item.unit_price * order_item.quantity)
    end
    total
  end
end
