class PostsController < ApplicationController
  def index
    # @posts = Post.all.order(created_at: :desc)
      @posts = Post.all.order(id: :desc)
  end
  def show
    @post = Post.find_by(id:params[:id])
  end
  def new

  end

  #create処理を走らせたあと、投稿一覧ページにリダイレクトを行う
  def create
    @post=Post.new(content:params[:content])
    @post.save
    redirect_to("/posts/index")
  end
end