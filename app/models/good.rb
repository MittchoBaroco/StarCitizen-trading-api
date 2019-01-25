class Good < ApplicationRecord
  has_many :price_reports
  has_many :locations, trhough: :price_reports
end
