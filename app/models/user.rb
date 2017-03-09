class User < ApplicationRecord
	
	devise :database_authenticatable, :registerable,
	       :recoverable, :trackable, :validatable,
	       :token_authenticatable

	has_many :authentication_tokens
end
