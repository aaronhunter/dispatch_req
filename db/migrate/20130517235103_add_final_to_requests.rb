class AddFinalToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :contact_phone, :integer
    add_column :requests, :bill_status, :string
  end
end
