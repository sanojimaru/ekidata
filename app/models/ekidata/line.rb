module Ekidata
  class Line < ActiveRecord::Base
    attr_accessible :code,
      :company_code,
      :name,
      :name_k,
      :name_h,
      :color_code,
      :color_name,
      :line_type,
      :google_map_zoom,
      :status,
      :sort

    validates :code, :presence => true, :uniqueness => true
    validates :company_code, :presence => true
    validates :name, :presence => true
  end
end
