class PriceReport < ApplicationRecord
  belongs_to :good
  belongs_to :location
end
