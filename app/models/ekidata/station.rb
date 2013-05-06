module Ekidata
  class Station < ActiveRecord::Base
    attr_accessible :code, :group_code,
                    :name, :name_kana, :name_latin,
                    :line_code, :pref_code, :postal_code,
                    :address, :lon, :lat,
                    :opened_at, :closed_at,
                    :status, :sort,
                    :updated_at, :created_at

    validates :code, :presence => true, :uniqueness => true
    validates :group_code, :presence => true
    validates :name, :presence => true
    validates :line_code, :presence => true
  end
end
