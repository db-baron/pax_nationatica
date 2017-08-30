class AddDatesToNations < ActiveRecord::Migration
  def change
    add_column :nations, :dates, :string
  end
end
