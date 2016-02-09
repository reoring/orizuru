module Orizuru
  class Unit
    attr_reader :id, :name, :status, :processName

    def initialize(id, name, status, processName)
      @id, @name, @status, @processName = id, name, status, processName
    end
  end
end
