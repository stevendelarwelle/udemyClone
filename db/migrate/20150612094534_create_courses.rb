class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.float :price, default: 0.00
      t.text :description

      t.timestamps null: false
    end
  end
end
