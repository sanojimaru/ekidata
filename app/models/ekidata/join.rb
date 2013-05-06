module Ekidata
  class Join < ActiveRecord::Base
    attr_accessible :line_code, :station_code1, :station_code2

    validates :line_code, :presence => true
    validates :station_code1, :presence => true
    validates :station_code2, :presence => true
  end
end
