class CreateTasks < ActiveRecord::Migration[7.2]
  def change
    create_table :tasks do |t|
      t.references :status, null: false, foreign_key: true
      t.references :level, null: false, foreign_key: true
      t.string :description
      t.datetime :due_by
      t.references :session, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
