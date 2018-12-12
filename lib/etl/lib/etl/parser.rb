module Etl
  class Parser
    attr_accessor :path
    attr_accessor :rows

    DATA_PATH = 'data'
    UNIT_ATTRS = %w{ price name description area uom }

    def initialize(path)
      @path = Rails.root.join DATA_PATH, path
      @rows = []
      load_file
    end

    def parse
    end

    private

    def load_file
    end
  end
end