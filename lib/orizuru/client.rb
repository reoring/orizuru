require 'orizuru/app'
require 'orizuru/unit'

module Orizuru
  class Client
    def initialize(connection)
      @connection = connection
    end

    # @return [Array<Orizuru::App>]
    def apps
      response = @connection.get '/apps'

      result = []

      response.body.each do |app|
        result.push app(app['name'])
      end

      return result
    end

    # @return [Orizuru::App]
    def app(app_name)
      app = (@connection.get '/apps/%s' % app_name).body
      p app

      units = []
      app['units'].each do |unit|
        units.push Unit.new(unit['ID'], unit['Name'], unit['Status'], unit['ProcessName'])
      end

      App.new(@connection,
              app['name'],
              app['ip'],
              app['cname'],
              app['repository'],
              units)
    end
  end
end
