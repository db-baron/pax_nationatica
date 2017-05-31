class ChangeNationNull < ActiveRecord::Migration
    def change
      change_column_null(:nations, :nation, false)
      change_column_null(:nations, :empire, false)
      change_column_null(:messages, :message, false)
      change_column_null(:messages, :user_id, false)
      change_column_null(:users, :email, false)
      change_column_null(:users, :password, false)
    end
end
