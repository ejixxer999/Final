class ReviewsController < ApplicationController


    def index
        reviews = Reviews.all
    end 

    def show 
        reviews = Review.find_by_id(params[:id])
        render json: reviews
    end 
end 
