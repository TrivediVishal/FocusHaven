class CreateStopwatches < ActiveRecord::Migration[7.2]
  def change
    create_table :stopwatches do |t|
      t.datetime :started_at
      t.datetime :completed_at
      t.integer :duration

      t.timestamps
    end
  end
end
