class Location < ApplicationRecord
  belongs_to :parent, class_name: 'Location', optional: true
  has_many :children, class_name: 'Location', foreign_key: 'parent_id'
  has_many :price_reports
  has_many :goods, through: :price_reports
end
