class Feature < ActiveRecord::Base
  has_many :fog_bugz_cases


  after_initialize :defaults

  def defaults
    self.active = true if self.active.nil?
    self.resolved = false if self.resolved.nil?
  end

end
