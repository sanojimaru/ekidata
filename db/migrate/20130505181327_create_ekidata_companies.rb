class CreateEkidataCompanies < ActiveRecord::Migration
  def change
    create_table :ekidata_companies do |t|
      t.integer :code, :null => false
      t.string :name, :null => false
      t.string :name_k
      t.string :name_h
      t.string :name_r
      t.string :url
      t.integer :company_type
      t.integer :status
      t.integer :sort

      t.timestamps
    end

    add_index :ekidata_companies, :code, :unique => true
  end
end