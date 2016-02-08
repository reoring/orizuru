module Orizuru
  class App
    attr_reader :name, :ip, :cname, :repository, :units

    def initialize(name, ip, cname, repository, units)
      @name, @ip, @cname, @repository, @units = name, ip, cname, repository, units
    end
  end
end
