class StaticController < ApplicationController

def index
	@inventories = Inventory.all
	@photos = Photo.all
	
end

def products
end

def product_data_collect
	product_data = params[:products]
	ProductsMailer.sell_buy_product_data(product_data).deliver_now
	redirect_to thanks_path
end

def consulting
end

def transportation
end

def thanks_for_email
end




end
