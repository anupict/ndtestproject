class InvoiceItem < ActiveRecord::Base
	belongs_to :invoice, inverse_of: :invoice_items
  	validates_presence_of :invoice
  	validates :qty, presence: true
end
