class User < ActiveRecord::Base
	has_many :hours_entries
end
