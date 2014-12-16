class AddInvoiceNumToInvoice < ActiveRecord::Migration
  def change
    add_column :invoices, :invoicenum, :integer
  end
end
