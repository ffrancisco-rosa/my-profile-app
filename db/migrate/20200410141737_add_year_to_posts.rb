class AddYearToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :year, :integer
  end
end
