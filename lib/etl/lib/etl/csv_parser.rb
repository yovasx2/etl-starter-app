module Etl
  class CsvParser < Parser
    def parse
      get_attrs_rows.each do |row|
        values = {}
        row.each.with_index do |elem, index|
          values[UNIT_ATTRS[index]] = elem
        end
        Unit.create(values)
      end
    end

    private

    def load_file
      content = ''
      File.open(File.join(path, 'units.csv'), 'r') do |f|
        f.each_line do |line|
          content += line
        end
      end
      self.rows = content.split("\n")
    end

    def get_attrs_rows
      indexes = get_headers_index
      get_rows.map do |row|
        indexes.map do |index_in_row|
          if index_in_row
            row[index_in_row]
          else
            nil
          end
        end
      end
    end

    def get_headers_index
      headers = get_headers
      UNIT_ATTRS.map do |attr|
        headers.find_index(attr)
      end
    end

    def get_headers
      self.rows.shift.split(',')
    end

    def get_rows
      res = []
      self.rows.map do |row|
        row.split(',')
      end
    end
  end
end