class Invoice < ActiveRecord::Base
	belongs_to :customer
  	validates :customer_id, presence: true

  	has_many :invoice_items, inverse_of: :invoice, dependent: :destroy
  	accepts_nested_attributes_for :invoice_items, allow_destroy: true 

  	validates_numericality_of  :invoicenum, :greater_than_or_equal_to => 1000

  		before_create :increment_invoicenum

		def increment_invoicenum
    	self.invoicenum = (self.class.last.nil?) ? "1000" : ((self.class.last.invoicenum.to_i) + 1).to_s
    	#self.invoicenum = invoice_id + 1000
		end

  	def total
  		
    	items = self.invoice_items

    	total = 0

    	items.each { |item|
      	total += InvoiceItem.find_by(id: item).price * item.qty
	    }

    total
  	end
end
