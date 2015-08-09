class AddIndexesToShoppeOrderItems < ActiveRecord::Migration
  def change
    add_index :shoppe_order_items, [:ordered_item_id, :ordered_item_type, :ordered_item_color, :ordered_item_size], name: 'index_shoppe_order_items_ordered_item'
    add_index :shoppe_order_items, :order_id
  end
end
