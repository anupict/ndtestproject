class InvoiceItemsController < ApplicationController
	
	before_action :set_invoice_item, only: [:show, :edit, :update, :destroy]
	
	def index
		@invoice_items = InvoiceItem.all
	end

	def new
		 @invoice_item = InvoiceItem.new
	end

	def edit
	end

	def show
	end

	def create
    @invoice_item = InvoiceItem.new(invoice_item_params)
	end

	private

	def invoice_item_params
      params[:invoice_item]
    end

	def set_invoice_item
      @invoice_item = InvoiceItem.find(params[:id])
    end

end
