class AnimalController < ApplicationController
  def index
  end
  
  def write
    new_post = Animalinfo.new
    new_post.title = params[:title]
    new_post.content = params[:content]
    new_post.save
    
    redirect_to "/animal/list"
  end
  
  def list
    @everyanimal= Animalinfo.all.reverse
  end
  
  def destroy
    @one_animal = Animalinfo.find(params[:id])
    @one_animal.destroy
    
    redirect_to "/animal/list"
  end
  
  def update_view
    @one_animal = Animalinfo.find(params[:id])
  end
  
  def update
    @one_animal = Animalinfo.find(params[:id])
    @one_animal.title = params[:title]
    @one_animal.content = params[:content]
    @one_animal.save
    
    redirect_to '/animal/list'
  end  
  
end