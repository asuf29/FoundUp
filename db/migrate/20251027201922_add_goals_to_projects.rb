class AddGoalsToProjects < ActiveRecord::Migration[8.0]
  def change
    add_column :projects, :funding_goal, :integer
    add_column :projects, :location, :string
    add_column :projects, :goals, :text
  end
end
