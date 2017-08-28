class AddImageToNations < ActiveRecord::Migration
  def change
    add_column :nations, :image, :string
  end
end
