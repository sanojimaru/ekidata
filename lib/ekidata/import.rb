module Ekidata
  class  Import
    attr_accessor :model_name, :headers, :env_name

    def from_csv
      if ENV[@env_name].present?
        model = @model_name.classify.constantize

        rows = []
        CSV.open(ENV[@env_name], 'r').each_with_index do |row, i|
            next if i == 0
            rows << model.new(Hash[@headers.zip row.to_a])
        end

        ActiveRecord::Base.transaction do
          model.delete_all
          model.import rows, on_duplicate_key_update: false
        end
      else
        puts "Specify #{@env_name} arguments."
      end
    end
  end
end
