class Company < ActiveRecord::Base
  has_many :users, :dependent => :destroy
  has_many :properties
  validates_presence_of :name, :logo, :address, :city, :country, :logo
  
  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/
end
