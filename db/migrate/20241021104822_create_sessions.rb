class CreateSessions < ActiveRecord::Migration[7.2]
  def change
    create_table :sessions do |t|
      t.datetime :initial_time
      t.datetime :started_at
      t.datetime :completed_at
      t.integer :duation
      t.boolean :is_completed
      t.references :incomplete, null: false, foreign_key: true

      t.timestamps
    end
  end
end
