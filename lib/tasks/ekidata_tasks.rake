namespace :ekidata do
  namespace :import do
    desc "Import all."
    task :all => :environment do
      Rake::Task['ekidata:import:companies'].invoke
      Rake::Task['ekidata:import:lines'].invoke
      Rake::Task['ekidata:import:stations'].invoke
      Rake::Task['ekidata:import:joins'].invoke
    end

    desc "Import stations."
    task :stations => :environment do
      import = Ekidata::Import.new
      import.model_name = 'Ekidata::Station'
      import.env_name = 'STATION_CSV'
      import.headers = :code, :group_code, :name, :name_kana, :name_latin, :line_code,
        :pref_code, :postal_code, :address, :lon, :lat, :opened_at, :closed_at,
        :status, :sort
      import.from_csv
    end

    desc "Import lines."
    task :lines => :environment do
      import = Ekidata::Import.new
      import.model_name = 'Ekidata::Line'
      import.env_name = 'LINE_CSV'
      import.headers = :code, :company_code, :name, :name_k, :name_h,
        :color_code, :color_name, :line_type, :google_map_zoom, :status, :sort
      import.from_csv
    end

    desc "Import companies."
    task :companies => :environment do
      import = Ekidata::Import.new
      import.model_name = 'Ekidata::Company'
      import.env_name = 'COMPANY_CSV'
      import.headers = :code, :name, :name_k, :name_h, :name_r, :url,
        :company_type, :status, :sort
      import.from_csv
    end

    desc "Import joins."
    task :joins => :environment do
      import = Ekidata::Import.new
      import.model_name = 'Ekidata::Join'
      import.env_name = 'JOIN_CSV'
      import.headers = :line_code, :station_code1, :station_code2
      import.from_csv
    end
  end
end
