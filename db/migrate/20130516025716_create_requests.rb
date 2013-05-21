class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :created_user_id
      t.integer :center_id
      t.string :cust_name
      t.string :contact_name
      t.string :phone
      t.string :priority
      t.integer :time_est
      t.integer :cit_level
      t.string :notes
      t.string :jde
      t.boolean :office_down
      t.string :parts

      t.timestamps
    end
    add_index :requests, [:user_id, :center_id, :created_at], unique: true
  end
end
