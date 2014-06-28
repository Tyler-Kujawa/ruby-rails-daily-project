class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :items_id
      t.integer :customer_id
      t.date :date
    end
  end
end
