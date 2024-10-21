class CreateFocusMusics < ActiveRecord::Migration[7.2]
  def change
    create_table :focus_musics do |t|
      t.string :url

      t.timestamps
    end
  end
end
