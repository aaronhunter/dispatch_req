class Request < ActiveRecord::Base
  attr_accessible :bill_status, :center_id, :cit_level, :contact_name, :contact_phone, :cust_name, :jde, :notes, :office_down, :parts, :phone, :priority, :time_est

  belongs_to :center
  belongs_to :user

  validates :center_id, :cit_level, :contact_name, :user_id, :cust_name,
            :jde, :notes, :office_down, :phone, :priority, :time_est, :bill_status, presence: true

  default_scope order: 'requests.created_at DESC'
end
