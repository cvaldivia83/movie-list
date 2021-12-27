class BlogPolicy < ApplicationPolicy
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

  def new?
    true
  end

  def create?
    set_admin
  end

  def edit?
    set_admin
  end

  def update?
    set_admin
  end

  def destroy?
    set_admin
  end

  private

  def set_admin
    user.admin
  end
end
