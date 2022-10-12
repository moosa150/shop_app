class ShopsController < ApplicationController
    def index
        @shops = Shop.all
    end
    def show
        @shop = Shop.find(params[:id])
    end

    
    def new
        @shop = Shop.new
    end
 
    def edit
        @shop = Shop.find(params[:id])
    end

    def create
      @shop = Shop.new(shop_params)
        if @shop.save
            redirect_to @shop
        else
         render 'new'
        end
    end

    def update
    @shop = Shop.find(params[:id])
 
        if @shop.update(shop_params)
            redirect_to @shop
        else
            render 'edit'
        end
    end


    def destroy
         @shop = Shop.find(params[:id])
         @shop.destroy
 
        redirect_to shops_path
    end
    private
    def shop_params
        params.require(:shop).permit(:shop_name, :details)
    end
end

