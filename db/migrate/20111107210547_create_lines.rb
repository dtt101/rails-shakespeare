class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.string :character
      t.text :line
      t.integer :line_order
      t.integer :scene_id

      t.timestamps
    end
  end
end
