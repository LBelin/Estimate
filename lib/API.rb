require 'fogbugz'

class API

def authenticate
  token = Rails.application.secrets.token
  fogbugz = Fogbugz::Interface.new(token: token, :uri => 'https://fogbugz.arpcdev.net')
  fogbugz.authenticate
  fogbugz
end

def getAPIinfo(id)
  fogbugz = self.authenticate
  bad_info = fogbugz.command(:search, q: id, cols: "hrsCurrEst,sTitle,sStatus")
  good_info = bad_info.to_s[1..-1]
end

def initialize(id)
  @id = id
  info = self.getAPIinfo(id)
  @title = info
  @estimate = info
end

attr_reader :id
attr_reader :title
attr_reader :estimate

end
