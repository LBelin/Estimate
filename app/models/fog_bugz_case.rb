class FogBugzCase < ActiveRecord::Base
  has_many :big_time_entries
  belongs_to :feature 
end
