class FixColumnName < ActiveRecord::Migration
  def up
    rename_column :requests, :created_user_id, :user_id
  end
end
