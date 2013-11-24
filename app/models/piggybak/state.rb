module Piggybak
  class State < ActiveRecord::Base
    attr_accessible :name, :abbr, :country_id
    belongs_to :country
  end
end
