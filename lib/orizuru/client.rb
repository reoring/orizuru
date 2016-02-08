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
        units = []
        app = (@connection.get '/apps/' + app['name']).body

        app['units'].each do |unit|
          units.push Unit.new(unit['ID'], unit['Name'], unit['Status'])
        end

        p app['repository']
        app = App.new(app['name'],
                      app['ip'],
                      app['cname'],
                      app['repository'],
                      units)

        result.push app
      end

      return result
    end
  end
end
