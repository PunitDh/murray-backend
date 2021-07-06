class JwtDenyList < ApplicationRecord
	# include Devise::JWT::RevocationStrategies::DenyList
	# self.table_name = "jwt_denylist"

	include Devise::JWT::RevocationStrategies::Denylist
  	self.table_name = 'jwt_denylist'
end