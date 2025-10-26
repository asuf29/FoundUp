class CreateProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :projects do |t|
      t.timestamps
      t.string :name, null: false
      t.references :creator, null: false, foreign_key: { to_table: :users }
    end
  end
end
