class InvoicesController < ApplicationController
	before_action :find_invoice, only: [:show, :edit, :update, :destroy]

	def index
		@invoice = Invoice.all
 		 if params[:search]
   		 @invoice = Invoice.search(params[:search]).order("created_at DESC")
  		else
   		 @invoice = Invoice.all.order('created_at DESC')
  		end
	end

	def show
	end

	def new
		@invoice = Invoice.new
		# @invoice.invoice_items.build
	end

	def create
		 @invoice = Invoice.new(invoice_params)
		 @invoice.save
		 redirect_to @invoice
	end

	def edit
	end
	

	def update
        if @invoice.update(invoice_params)
        redirect_to @invoice, notice: 'Invoice was successfully updated.'
      	else
        render :edit
      	end
  	end

  	def destroy
         @invoice.destroy
        redirect_to @invoice, notice: 'Invoice was successfully deleted.'
  	end

	private

	def find_invoice
		 @invoice = Invoice.find(params[:id])
    end

    def invoice_params
    	params.require(:invoice).permit(:id, :customer_id, :invoicenum,
                                      invoice_items_attributes: [:id, :invoice_id, :description, :qty, :price, :_destroy])
    end
end
