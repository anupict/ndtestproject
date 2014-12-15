class Customer < ActiveRecord::Base
	has_many :invoices, dependent: :destroy
	validates :name, presence: true
end
