class PostPolicy < ApplicationPolicy
  # [...]

  def show
    true
  end

  def new
    true
  end

  def create?
    return true
  end

  def edit

  end

  def update?

  end

  def destroy?

  end

end
