require_relative '../../db/config'

class Representative < ActiveRecord::Base
	belongs_to :state
	belongs_to :party
end