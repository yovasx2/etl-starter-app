module Etl
  class Parse
    extend LightService::Action
    expects :format

    executed do |ctx|
      parser = case ctx.format
      when 'csv'
        CsvParser.new(ctx.format)
      when 'json'
        JsonParser.new(ctx.format)
      end
      parser.parse
    end
  end
end