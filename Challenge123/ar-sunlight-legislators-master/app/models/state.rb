require_relative '../../db/config'

class State < ActiveRecord::Base
	has_many :politicians
	has_many :representatives
end