class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :attachable_id
      t.string :attachable_type

      t.timestamps null: false
    end
  end
end
