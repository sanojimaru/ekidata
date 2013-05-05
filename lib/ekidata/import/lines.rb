module Ekidata::Import
  class Lines < Base
    model_class 'Ekidata::Line'
    csv_headers :code,
      :code,
      :company_code,
      :name,
      :name_kana,
      :name_formal,
      :color_code,
      :color_name,
      :line_type,
      :google_map_zoom,
      :status,
      :sort

    def from_csv
      if ENV['LINE_CSV'].present?
        csv ENV['LINE_CSV']
      else
        puts "Specify FILE arguments."
        puts "rake ekidata:import:lines LINE_CSV=/path/to/line.csv"
      end
    end
  end
end