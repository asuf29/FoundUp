class AddCategoriesToProjects < ActiveRecord::Migration[8.0]
  def change
    add_column :projects, :category, :integer
  end
end
