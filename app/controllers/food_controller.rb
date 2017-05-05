class FoodController < ApplicationController
  def index
  end
  
  def write
    new_post = Foodlist.new
    new_post.name = params[:name]
    new_post.calories = params[:calories]
    new_post.save
    
    redirect_to "/food/list"
  end
  
  def list
    @everyfood= Foodlist.all.reverse
  end
  
  def destroy
    @one_food = Foodlist.find(params[:id])
    @one_food.destroy
    
    redirect_to "/food/list"
  end
  
  def update_view
    @one_food = Foodlist.find(params[:id])
  end
  
  def update
    @one_food = Foodlist.find(params[:id])
    @one_food.name = params[:name]
    @one_food.calories = params[:calories]
    @one_food.save
    
    redirect_to '/food/list'
  end    
end
