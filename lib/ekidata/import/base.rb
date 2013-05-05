module Ekidata::Import
  class Base
    cattr_accessor :model_class_name, :csv_headers

    protected
    def self.model_class cls
      @@model_class_name = cls
    end

    def self.csv_headers *headers
      @@csv_headers = headers
    end

    def csv file
      model_class = @@model_class_name.classify.constantize
      CSV.open file do |csv|
        rows = csv.map do |row|
          model_class.new Hash[@@csv_headers.zip row.to_a]
        end

        ActiveRecord::Base.transaction do
          model_class.delete_all
          model_class.import rows
        end
      end
    end
  end
end