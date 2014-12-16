class InvoicesController < ApplicationController
	before_action :find_invoice, only: [:show, :edit, :update, :destroy]

	def index
		@invoice = Invoice.all
	end

	def show
	end

	def new
		@invoice = Invoice.new
		# @invoice.invoice_items.build
	end

	def create
		 @invoice = Invoice.new(invoice_params)
	end

	def edit
	end
	

	private

	def find_invoice
		 @invoice = Invoice.find(params[:id])
    end

    def invoice_params
    	params.require(:invoice).permit(:id, :customer_id,
                                      invoice_items_attributes: [:id, :invoice_id, :description, :qty, :price, :_destroy])
    end
end
