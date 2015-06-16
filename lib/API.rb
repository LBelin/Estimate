require 'fogbugz'

class API

def self.authenticate
  token = Rails.application.secrets.token
  fogbugz = Fogbugz::Interface.new(token: token, :uri => 'https://fogbugz.arpcdev.net')
  fogbugz.authenticate
  fogbugz
end

def self.getAPIinfo(id)
  fogbugz = self.authenticate
  @APIinfo = fogbugz.command(:search, q: id, cols: "hrsCurrEst,sTitle,sStatus")
end

end
