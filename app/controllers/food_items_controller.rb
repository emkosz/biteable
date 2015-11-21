class FoodItemsController < ApplicationController
	def index
		@food_items = FoodItem.all
	end

	def show
		@food_item = FoodItem.find(params[:id])
	end
	
	def new
		@food_item = FoodItem.new
	end

	def create
		@food_item = FoodItem.new(food_item_params)
		# savin the model in the database
		sucsess = @food_item.save
		if sucsess == true
			redirect_to @food_item
		else
			render :new
		end
	end

	private
		def food_item_params
			puts params
			params.require(:food_item).permit(:name, :amount, :description)
		end
end
