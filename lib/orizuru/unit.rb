module Orizuru
  class Unit
    attr_reader :id, :name, :status

    def initialize(id, name, status)
      @id, @name, @status = id, name, status
    end
  end
end
