module Ekidata
  class Company < ActiveRecord::Base
    attr_accessible :code,
      :name,
      :name_k,
      :name_h,
      :name_r,
      :url,
      :company_type,
      :status,
      :sort

    validates :code, :presence => true, :uniqueness => true
    validates :name, :presence => true
  end
end
