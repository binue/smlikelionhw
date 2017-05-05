class BucketlistController < ApplicationController
  def index
  end
  
  def write
    new_post = Bucketlist.new
    new_post.content = params[:content]
    new_post.save
    
    redirect_to "/bucketlist/list"
  end
  
  def list
    @every_bucketlist = Bucketlist.all
    @bucketlist_count =  Bucketlist.count
  end
  
  def destroy
    @one_bucketlist = Bucketlist.find(params[:id])
    @one_bucketlist.destroy
    
    redirect_to "/bucketlist/list"
  end
  
  def update_view
    @one_bucketlist = Bucketlist.find(params[:id])
  end
  
  def update
    @one_bucketlist = Bucketlist.find(params[:id])
    @one_bucketlist.content = params[:content]
    @one_bucketlist.save
    
    redirect_to '/bucketlist/list'
  end
  
end
