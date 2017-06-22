class ChangeUserField < ActiveRecord::Migration
  def change
      rename_column :Users, :nation, :favorite_nation
  end
end
