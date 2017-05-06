class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :message
      t.string :user_id

      t.timestamps null: false
    end
  end
end
