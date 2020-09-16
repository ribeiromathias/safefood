class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :meal
  validates :quantity, presence: true

  def price
    quantity * unit_price
  end

end
