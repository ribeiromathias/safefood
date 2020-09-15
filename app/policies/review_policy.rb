class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def create?
    true
  end
  def destroy?
     #record.user == user
     #no one can delete a review:
    false
  end
end

