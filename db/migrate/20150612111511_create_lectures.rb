class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :name
      t.text :description
      t.text :instructions
      t.integer :seq_number
      t.string :url
      t.integer :user_id
      t.integer :course_id

      t.timestamps null: false
    end
  end
end
