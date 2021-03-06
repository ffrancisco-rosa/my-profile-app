class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :live_version
      t.string :github_version

      t.timestamps
    end
  end
end
