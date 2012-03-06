class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :description
      t.boolean :finished, :default => false

      t.timestamps
    end
  end
end
