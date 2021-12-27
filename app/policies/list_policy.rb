class ListPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def edit?
    set_user
  end

  def update?
    set_user
  end

  def destroy?
    set_user
  end

  private

  def set_user
    record.user == user || user.admin
  end
end
