module Ekidata::Import
  class Stations < Base
    model_class 'Ekidata::Station'
    csv_headers :code,
      :group_code,
      :name,
      :name_kana,
      :name_latin,
      :line_code,
      :pref_code,
      :postal_code,
      :address,
      :lon,
      :lat,
      :opened_at,
      :closed_at,
      :status,
      :sort

    def from_csv
      if ENV['STATION_CSV'].present?
        csv ENV['STATION_CSV']
      else
        puts "Specify STATION_FILE arguments."
        puts "rake ekidata:import:stations STATION_CSV=/path/to/station.csv"
      end
    end
  end
end