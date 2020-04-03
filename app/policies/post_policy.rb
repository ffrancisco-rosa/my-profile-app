class PostPolicy < ApplicationPolicy
  # [...]
  class Scope < Scope

    def resolve
      scope.all
    end
  end

  def show
    true
  end

  def new
    true
  end

  def create?
    true
  end

  def edit
    check_user
  end

  def update?
    check_user
  end

  def destroy?
    check_user
  end

  private

  def check_user
    if record.user == current_user
      true
    else
      false
    end
  end
end
