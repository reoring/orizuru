module Orizuru
  class App
    attr_reader :name, :ip, :cname, :repository, :units

    def initialize(connection, name, ip, cname, repository, units)
      @connection = connection
      @name, @ip, @cname, @repository, @units = name, ip, cname, repository, units
    end

    def restart
      units.each do |unit|
        @connection.post '/apps/%s/restart' % @name
      end
    end
  end
end
