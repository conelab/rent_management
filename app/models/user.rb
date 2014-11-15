class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :company

  validates_presence_of :name, :company, :username

  before_validation :set_confrim_password

  def set_confrim_password
    confirm_password = password
  end
end
