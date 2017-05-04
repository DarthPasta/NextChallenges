require_relative '../../db/config'

class Politician < ActiveRecord::Base
	belongs_to :party
	belongs_to :states
end