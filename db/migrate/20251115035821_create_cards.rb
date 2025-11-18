class CreateCards < ActiveRecord::Migration[8.1]
  def change
    create_table :cards do |t|
      t.string :name
      t.text :description
      t.datetime :deadline
      t.timestamps
    end
  end
end
