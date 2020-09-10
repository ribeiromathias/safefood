class OrderItemPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def create
      
    end

    def destroy
      
    end
    
    
  end
end
