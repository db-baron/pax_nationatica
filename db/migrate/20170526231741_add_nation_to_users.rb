class AddNationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nation, :string
  end
end
