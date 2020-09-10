class DeliverySchedulePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    create?    
  end
  
  def create?
    user.seller?    
  end
  
  def destroy?
    record.user == user    
  end
  
end
