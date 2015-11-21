class FoodItem < ActiveRecord::Base
	validates :name, presence: true
	validates :description, presence: true
	validates :amount, presence: true
end
