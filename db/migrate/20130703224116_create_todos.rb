class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title
      t.integer :order
      t.boolean :completed

      t.timestamps
    end
  end
end
