class CreateEkidataLines < ActiveRecord::Migration
  def change
    create_table :ekidata_lines do |t|
      t.integer :code, :null => false
      t.integer :company_code, :null => false
      t.string :name, :null => false
      t.string :name_k
      t.string :name_h
      t.string :color_code
      t.string :color_name
      t.integer :line_type
      t.integer :google_map_zoom
      t.integer :status
      t.integer :sort

      t.timestamps
    end

    add_index :ekidata_lines, :code, :unique => true
  end
end