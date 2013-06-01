class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :center_id, :name

  belongs_to :center
  has_many :requests

  VALID_EMAIL_REGEX = /\A[\w+\-.]+(@henryschein.com)$/i
  validates :email, format: VALID_EMAIL_REGEX, message: "Must be valid Henry Schein email."
  validates :name, :center_id, presence: true
end
