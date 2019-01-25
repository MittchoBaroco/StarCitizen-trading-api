class CreatePriceReports < ActiveRecord::Migration[5.2]
  def change
    create_table :price_reports do |t|
      t.string :report_type
      t.float :price
      t.belongs_to :good, foreign_key: true
      t.belongs_to :location, foreign_key: true

      t.timestamps
    end
  end
end
