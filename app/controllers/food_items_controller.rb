class FoodItemsController < ApplicationController
	def index
		@food_items = FoodItem.all
	end

	def show
		@food_item = FoodItem.find(params[:id])
	end
	
	def new
	end

	def create
		@food_item = FoodItem.new(food_item_params)

		# savin the model in the database
		@food_item.save!
		redirect_to @food_item
	end

	private
		def food_item_params
			puts params
			params.require(:food_item).permit(:name, :amount, :description)
		end
end
