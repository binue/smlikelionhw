class MovieController < ApplicationController
  def index
  end
  
  def write
    new_post = Bestmovie.new
    new_post.title = params[:title]
    new_post.movietime = params[:when]
    new_post.content = params[:content]
    new_post.save
    
    redirect_to "/movie/list"
  end
  
  def list
    @everymovie= Bestmovie.all.reverse
  end

  def destroy
    @one_movie = Bestmovie.find(params[:id])
    @one_movie.destroy
    
    redirect_to "/movie/list"
  end
  
  def update_view
    @one_movie = Bestmovie.find(params[:id])
  end
  
  def update
    @one_movie = Bestmovie.find(params[:id])
    @one_movie.title = params[:title]
    @one_movie.movietime = params[:when]
    @one_movie.content = params[:content]
    @one_movie.save
    
    redirect_to '/movie/list'
  end    
end
