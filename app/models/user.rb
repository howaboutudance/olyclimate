
class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
	VALID_EMAIL_REGEX = /\A([\w+\-.]+)@[a-z\d\-]+(\.[a-z\d\-.]+)*\.([a-z]{2,})\z/i
	validates :email, presence: true, length: { maximum: 255 },
							uniqueness: { case_sensitive: false }
	validates_format_of :email,  with: VALID_EMAIL_REGEX 
	validates :discuss, presence: true
	validates :alerts, presence: true
	validates :news, presence: true
end
