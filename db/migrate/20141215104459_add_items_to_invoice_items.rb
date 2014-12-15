class AddItemsToInvoiceItems < ActiveRecord::Migration
  def change
    add_column :invoice_items, :description, :string
    add_column :invoice_items, :price, :decimal
    add_column :invoice_items, :qty, :integer
  end
end
