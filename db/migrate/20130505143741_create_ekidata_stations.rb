class CreateEkidataStations < ActiveRecord::Migration
  def change
    create_table :ekidata_stations do |t|
      t.integer :code, :null => false
      t.integer :group_code, :null => false
      t.string :name, :null => false
      t.string :name_kana
      t.string :name_latin
      t.integer :line_code, :null => false
      t.integer :pref_code
      t.string :postal_code
      t.string :address
      t.float :lon
      t.float :lat
      t.date :opened_at
      t.date :closed_at
      t.integer :status
      t.integer :sort

      t.timestamps
    end

    add_index :ekidata_stations, :code, :unique => true
    add_index :ekidata_stations, :line_code
  end
end
