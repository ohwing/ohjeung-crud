class HomeController < ApplicationController
  def new
    
  end
  
  def create
    @db = Ilovedb.new
    @db.title = params[:input_title]
    @db.content = params[:input_content]
    @db.save
    
    redirect_to "/home/show/#{@db.id}"
  end
  
  def read
    @db = Ilovedb.all.reverse
  end
  
  def show
    @db = Ilovedb.find(params[:post_id])
    @comments = Comment.where(:post_id => params[:post_id])
    
  end
  
  def destroy
    @db = Ilovedb.find(params[:post_id])
    @db.destroy
    redirect_to "/"
  end
  
  #update
  def edit
    @db = Ilovedb.find(params[:post_id])
  end
  
  def update
    @db = Ilovedb.find(params[:post_id])
    @db.title = params[:input_title]
    @db.content = params[:input_content]
    @db.save
    
    redirect_to "/home/show/#{@db.id}"
  end
end
