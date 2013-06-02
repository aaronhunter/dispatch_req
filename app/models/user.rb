class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :center_id, :name

  after_save :send_welcome_email

  belongs_to :center
  has_many :requests

  VALID_EMAIL_REGEX = /\A[\w+\-.]+(@henryschein.com)$/i
  validates :email, format: VALID_EMAIL_REGEX
  validates :name, :center_id, presence: true

  def confirm!
    send_welcome_email
    super
  end

protected

  def confirmation_required?
    false
  end

private

  def send_welcome_email
    DispatchMailer.welcome_email(self).deliver
  end
end
