class Member < ActiveRecord::Base
	self.has_secure_password
end
