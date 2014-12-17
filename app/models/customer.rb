class Customer < ActiveRecord::Base
	has_many :invoices, dependent: :destroy
	validates :name, presence: true

	def self.search(search)
    where("name LIKE ?", "%#{search}%")
    where("email LIKE ?", "%#{search}%")
    end
	
end
