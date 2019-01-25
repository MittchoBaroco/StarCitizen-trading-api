class CreateGoods < ActiveRecord::Migration[5.2]
  def change
    create_table :goods do |t|
      t.string :good_type
      t.string :name

      t.timestamps
    end
  end
end
