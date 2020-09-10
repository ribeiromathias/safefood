class DeliverySchedule < ApplicationRecord
  belongs_to :user

  validates :day, presence: true
end
