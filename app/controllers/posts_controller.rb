class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    Post.create(
      image_url: params[:image_url],
      story: params[:story]
    )
    
    redirect_to root_path
  end

  def show
  end

  def edit
  end

  def update
    @post.update(
      image_url: params[:image_url],
      story: params[:story]
    )
    
    redirect_to post_path(@post.id)
  end

  def destroy
    @post.destroy
    
    redirect_to root_path
  end
  
  def new_tag
  end
  
  def create_tag
    # @tag1 = params[:tag1]
    # @tag2 = params[:tag2]
    # @tag3 = params[:tag3]
    # @tag4 = params[:tag4]
    # @tag5 = params[:tag5]

    # @tag1 = params[:tag][0]
    # @tag2 = params[:tag][1]
    
     @tag1 = params[:tag][:name1]
    
  end
  
  private
  def set_post
    @post = Post.find(params[:id])
  end
  
end
