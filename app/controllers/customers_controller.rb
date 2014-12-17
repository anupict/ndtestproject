class CustomersController < ApplicationController
	before_action :find_customer, only: [:show, :edit, :update, :destroy]

	def index
		@customers = Customer.all
		if params[:search]
   		 @customers = Customer.search(params[:search]).order("created_at DESC")
  		else
   		 @customers = Customer.all.order('created_at DESC')
  		end
	end

	def show
	end

	def new
		@customer = Customer.new
	end

	def create
		 @customer = Customer.new(customer_params)
		 @customer.save
		 redirect_to @customer

	end

	def edit
	end

	def destroy
         @customer.destroy
        redirect_to @customer, notice: 'Customer was successfully deleted.'
  	end


	private

	def find_customer
		 @customer = Customer.find(params[:id])
    end

    def customer_params
    	params.require(:customer).permit(:id, :name, :email)
    end


end
