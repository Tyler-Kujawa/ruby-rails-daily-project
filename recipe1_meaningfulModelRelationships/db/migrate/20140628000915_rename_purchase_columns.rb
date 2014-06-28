class RenamePurchaseColumns < ActiveRecord::Migration
  def change
    change_table :purchases do |t|
      t.rename :customer_id, :shopper_id
      t.rename :items_id, :item_id
    end
  end
end
