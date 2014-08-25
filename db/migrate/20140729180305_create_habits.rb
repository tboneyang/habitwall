class CreateHabits < ActiveRecord::Migration
  def change
    create_table :habits do |t|
      t.string :title
      t.integer :completed
      t.text :text
      t.datetime :time

      t.timestamps
    end
  end
end
