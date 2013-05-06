module Ekidata
  class  Import
    attr_accessor :model_name, :headers, :env_name

    def from_csv
      if ENV[@env_name].present?
        model = @model_name.classify.constantize
        puts model
        CSV.open ENV[@env_name] do |csv|
          rows = csv.map do |row|
            model.new Hash[@headers.zip row.to_a]
          end

          puts rows.last.attributes

          ActiveRecord::Base.transaction do
            model.delete_all
            model.import rows
          end
        end
      else
        puts "Specify #{@env_name} arguments."
      end
    end
  end
end