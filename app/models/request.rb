class Request < ActiveRecord::Base
  attr_accessible :center_id, :cit_level, :contact_name, :created_user_id,
                  :cust_name, :jde, :notes, :office_down, :parts, :phone,
                  :priority, :time_est, :contact_phone, :bill_status

  belongs_to :center
  belongs_to :user

  validates :center_id, :cit_level, :contact_name, :created_user_id, :cust_name,
            :jde, :notes, :office_down, :phone, :priority, :time_est, :bill_status, presence: true
end
