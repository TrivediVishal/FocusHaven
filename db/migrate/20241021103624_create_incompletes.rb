class CreateIncompletes < ActiveRecord::Migration[7.2]
  def change
    create_table :incompletes do |t|
      t.string :reason

      t.timestamps
    end
  end
end
