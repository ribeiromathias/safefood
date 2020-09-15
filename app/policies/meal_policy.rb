class MealPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def new?
    create?
  end

  def create?
    user.seller?
  end

  def owned?
    update?
  end

  def edit?
    update?
  end

  def update?
    record.user == user
  end

  def destroy?
    update?
  end
end
