class FogBugzCase < ActiveRecord::Base
  has_many :big_time_entries
  belongs_to :feature
  self.primary_key = "case_id"
end
