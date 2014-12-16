class Invoice < ActiveRecord::Base
	belongs_to :customer
  	validates :customer_id, presence: true

  	has_many :invoice_items, inverse_of: :invoice, dependent: :destroy
  	accepts_nested_attributes_for :invoice_items, allow_destroy: true 

  	

  	def total
  		total =0
  	end
end
