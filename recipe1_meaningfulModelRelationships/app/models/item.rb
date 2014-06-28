class Item < ActiveRecord::Base
  has_many :purchases
  has_many :customers, through: :purchases

  def purchase(shopper)
    Purchase.create!(item_id: id, shopper_id: shopper.id)
  end
end
