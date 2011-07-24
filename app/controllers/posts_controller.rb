class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by_id( params[:id])
  end

  def create
    if request.post?
      @post = Post.new(params[:post])
      if @post.save
        redirect_to "/post/#{@post.id}"
      end
    else
      @post = Post.new
    end
  end

  def edit
    @post = Post.find_by_id params[:id]
    puts "edit post" if request.post?
    puts "edit put" if request.put?
    puts "edit get" if request.get?

    unless request.get?
      if @post.update_attributes params[:post]
        redirect_to "/post/#{@post.id}"
      end
    end
  end
end
