class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.integer :line_id
      t.string :video_url
      t.string :email_address
      t.string :twitter_name

      t.timestamps
    end
  end
end
