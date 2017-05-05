class MyboardController < ApplicationController
  def index
  end
  
  def write
    new_post = Mypost.new
    new_post.title = params[:title]
    new_post.writer = params[:writer]
    new_post.body = params[:body]
    new_post.save
    
    redirect_to "/myboard/list"
  end
  
  def list
    @every_post= Mypost.all.reverse
  end

  def destroy
    @one_post = Mypost.find(params[:id])
    @one_post.destroy
    
    redirect_to "/myboard/list"
  end
  
  def update_view
    @one_post = Mypost.find(params[:id])
  end
  
  def update
    @one_post = Mypost.find(params[:id])
    @one_post.title = params[:title]
    @one_post.writer = params[:writer]
    @one_post.body = params[:body]
    @one_post.save
    
    redirect_to '/myboard/list'
  end  
end