class Good < ApplicationRecord
  has_many :price_reports
  has_many :locations, through: :price_reports
end
