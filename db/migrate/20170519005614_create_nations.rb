class CreateNations < ActiveRecord::Migration
  def change
    create_table :nations do |t|
      t.string :nation
      t.string :empire
      t.string :continent
      t.string :timeperiod

      t.timestamps null: false
    end
  end
end
