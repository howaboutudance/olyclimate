
class User < ActiveRecord::Base
	VALID_EMAIL_REGEX = /\A([\w+\-.]+)@([a-z\d\-.]+)\.{1}([a-z]{2,})\z/i
	validates :email, presence: true, length: { maximum: 255 }
	validates_format_of :email,  with: VALID_EMAIL_REGEX 
	validates :discuss, presence: true
	validates :alerts, presence: true
	validates :news, presence: true
end
