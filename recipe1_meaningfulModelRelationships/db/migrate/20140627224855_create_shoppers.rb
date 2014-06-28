class CreateShoppers < ActiveRecord::Migration
  def change
    create_table :shoppers do |t|
      t.string :first_name
      t.string :last_name
      t.string :zip

      t.timestamps
    end
  end
end
