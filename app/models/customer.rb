class Customer < ActiveRecord::Base
	has_many :invoices, dependent: :destroy
	validates :name, presence: true

	def self.search(search)
	   
	    if connection.adapter_name == 'PostgreSQL'
	    where("title ilike ?", "%#{search}%")
	    where("email ilike ?", "%#{search}%")
	  	else
	    where("name like ?", "%#{search}%")
	    where("email LIKE ?", "%#{search}%")
	  	end
	    
	end
	
end
