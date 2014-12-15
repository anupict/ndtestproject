class InvoicesController < ApplicationController
	before_action :find_invoice, only: [:show, :edit, :update, :destroy]

	def index
	end

	def show
	end

	def new
		@invocie = Invoice.new
	end

	def create
		 @invocie = Invoice.new(invocie_params)
	end

	def edit
	end
	

	private

	def find_invocie
		 @invocie = Invocie.find(params[:id])
    end

    def invoice_params
    	params.require(:invoice).permit(:id, :name, :email)
    end
end
