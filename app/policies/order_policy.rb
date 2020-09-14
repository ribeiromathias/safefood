class OrderPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    record.user == user
  end

  def update?
    record.user == user
  end

  def seller_show?
    user.seller? && user.meals.where(id: record.order_items.pluck(:meal_id)).any?
  end

  def seller_update?
    seller_show?
  end

  def seller_index?
    user.seller?
  end


end
