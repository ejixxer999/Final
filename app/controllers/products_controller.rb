class ProductsController < ApplicationController
    before_action :set_product, only:[:show, :update, :destroy]

    def index
        products = Products.all
    end 

    def show
        product = Product.find_by_id(params[:id])
        render json: product
    end 

    def create
        product = Product.find_or_create_by(product_params)

        if product.save 
            render json: product, status: :created
        else
            render json: 
    end 

    def update
    end

    private

    def set_product
        product = Product.find(params[:id])
    end 

    def product_params
        params.require(:product).permit(:name)
    end 

end
