class CreateInvoiceItems < ActiveRecord::Migration
  def change
    create_table :invoice_items do |t|
      t.integer :invoice_id

      t.timestamps
    end
  end
end
