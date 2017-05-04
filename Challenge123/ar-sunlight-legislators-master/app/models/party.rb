require_relative '../../db/config'

class Party < ActiveRecord::Base
	has_many :politicians
	has_many :representatives
end