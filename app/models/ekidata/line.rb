module Ekidata
  class Line < ActiveRecord::Base
    attr_accessible :code,
      :company_code,
      :name,
      :name_kana,
      :name_formal,
      :color_code,
      :color_name,
      :line_type,
      :google_map_zoom,
      :status,
      :sort

    validates :code, :presence => true, :uniqueness => true
    validates :company_code, :presence => true
    validates :name, :presence => true
    validates :color_code, :length => {:maximum => 6}
    validates :color_name, :length => {:maximum => 10}
    validates :line_type, :length => {:maximum => 1}
  end
end
