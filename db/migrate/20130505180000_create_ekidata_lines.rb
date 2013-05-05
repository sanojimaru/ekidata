class CreateEkidataLines < ActiveRecord::Migration
  def change
    create_table :ekidata_lines do |t|
      t.integer :code, :null => false
      t.integer :company_code, :null => false
      t.string :name, :null => false
      t.string :name_kana
      t.string :name_formal
      t.string :color_code, :length => 6
      t.string :color_name, :length => 10
      t.integer :line_type, :length => 1
      t.integer :google_map_zoom
      t.integer :status
      t.integer :sort

      t.timestamps
    end

    add_index :ekidata_lines, :code, :unique => true
  end
end