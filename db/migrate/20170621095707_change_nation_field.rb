class ChangeNationField < ActiveRecord::Migration
  def change
      rename_column :Nations, :nation, :nation_name
  end
end
