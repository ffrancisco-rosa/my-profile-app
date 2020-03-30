class PostPolicy < ApplicationPolicy
  # [...]

  def show
    true
  end

  def new
    check_user
  end

  def create?
    check_user
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
