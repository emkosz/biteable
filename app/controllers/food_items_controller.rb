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

	def update
		@food_item = FoodItem.find(params[:id])

		if @food_item.update(food_item_params)
			redirect_to food_items_path
		end
	end

	def edit
		@food_item = FoodItem.find(params[:id])
	end

	def destroy
		@food_item = FoodItem.find(params[:id])
		@food_item.destroy

		redirect_to food_items_path
	end

	private
		def food_item_params
			puts params
			params.require(:food_item).permit(:name, :amount, :description)
		end
end
