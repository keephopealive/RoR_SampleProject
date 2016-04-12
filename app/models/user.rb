class User < ActiveRecord::Base
	has_many :blogs
  has_secure_password
  validates :first_name, 
  	presence: 		true,
  	length: 		{ minimum: 1 }
end
