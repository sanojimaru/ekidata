module Ekidata::Import
  class Stations
    def from_file
      if ENV["STATION_FILE"].present?
        headers = [
          :code,
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
          :sort,
        ]

        CSV.open(ENV["STATION_FILE"], :encoding => "UTF-8:UTF-8") do |csv|
          stations = csv.map do |row|
            Ekidata::Station.new Hash[headers.zip row.to_a]
          end

          ActiveRecord::Base.transaction do
            Ekidata::Station.delete_all
            Ekidata::Station.import stations
          end
        end
      else
        puts "Specify FILE arguments."
        puts "rake ekidata_rails:import:stations STATION_FILE=/path/to/station.csv"
      end
    end
  end
end