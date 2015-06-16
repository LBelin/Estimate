require 'fogbugz'

class API

token = Rails.application.secrets.token
fogbugz = Fogbugz::Interface.new(token: token, :uri => 'https://fogbugz.arpcdev.net')
fogbugz.authenticate
@hello = fogbugz.command(:search, q: 22778, cols: "hrsCurrEst,sTitle,sStatus")

end
