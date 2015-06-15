class AddInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :facebook, :string
    add_column :users, :twitter, :string
    add_column :users, :github, :string
    add_column :users, :portfolio, :string
  end
end
