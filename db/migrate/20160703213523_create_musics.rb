class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :artist
      t.text :description

      t.timestamps null: false
    end
  end
end
