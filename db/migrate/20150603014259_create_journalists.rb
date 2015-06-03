class CreateJournalists < ActiveRecord::Migration
  def change
    create_table :journalists do |t|
      t.string :name
      t.string :fb_id
      t.string :gender
      t.string :email
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
