module Etl
  class ParserOrganizer
    extend LightService::Organizer

    def self.call(format)
      with(:format => format).reduce(Parse)
    end
  end
end