class ProductsController < ApplicationController

 def create
    @shop = Shop.find(params[:shop_id])
    @product = @shop.products.create(product_params)
    redirect_to shop_path(@shop)
  end


  def destroy
    @shop = Shop.find(params[:shop_id])
    @product = @shop.products.find(params[:id])
    @product.destroy
    redirect_to shop_path(@shop)
  end

 
  private
    def product_params
      params.require(:product).permit(:product_name, :detail, :price)
    end
end
