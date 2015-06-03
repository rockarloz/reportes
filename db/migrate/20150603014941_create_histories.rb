class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.string :title
      t.text :body
      t.string :photo
      t.boolean :show
      t.float :latitude
      t.float :longitude
      t.integer :views
      t.integer :report
      t.integer :favorite

      t.timestamps null: false
    end
  end
end
