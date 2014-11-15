class Tennant < ActiveRecord::Base
  belongs_to :property

  validates_associated :property, :allow_blank => false

  validates_presence_of :phone_number, :address, :city, :country, :is_active, :property
  validates_numericality_of :security_deposit, :greater_than_or_equal_to => 0

  before_save :before_save

  attr_reader :password

  def before_save
    if password.present?
      self.encrypted_password = BCrypt::Engine.hash_secret(password, BCRYPT_SALT)
    end
  end

  def after_save
    self.encrypted_password = nil
  end
end
