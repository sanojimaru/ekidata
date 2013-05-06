class CreateEkidataJoins < ActiveRecord::Migration
  def change
    create_table :ekidata_joins do |t|
      t.integer :line_code, :null => false
      t.integer :station_code1, :null => false
      t.integer :station_code2, :null => false

      t.timestamps
    end
  end
end
