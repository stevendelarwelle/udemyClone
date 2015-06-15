class AddSlugsToLectures < ActiveRecord::Migration
  def change
    add_column :lectures, :slug, :string
    add_index :lectures, :slug, unique: true
  end
end
