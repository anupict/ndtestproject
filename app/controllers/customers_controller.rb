class CustomersController < ApplicationController
	before_action :find_customer, only: [:show, :edit, :update, :destroy]

	def index
	end

	def show
	end

	def new
		@customer = Customer.new
	end

	def create
		 @customer = Customer.new(customer_params)
	end

	def edit
	end
	

	private

	def find_customer
		 @customer = Customer.find(params[:id])
    end

    def customer_params
    	params.require(:customer).permit(:id, :name, :email)
    end


end
