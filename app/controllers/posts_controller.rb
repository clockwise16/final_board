class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    # render 'posts/new' 직접 안써도 같다면 자동으로 인식
  end
  
  def create
    Post.create(
      title: params[:title],
      content: params[:content]
      )
      redirect_to '/'
  end

  def show
    # 해당하는 글 하나를 보여준다 (/posts/show/1)
    @post = Post.find(params[:id]) # 글의 ID
  end
  
  def edit
    @post = Post.find(params[:id]) # 글의 ID
  end
  
  def update
    # /posts/update/1 => 1번 id를 가진 Post 내용을 수정하겠다.
    @post = Post.find(params[:id])
    @post.update(
        title: params[:title],
        content: params[:content]
      )
    
    redirect_to "/posts/show/#{@post.id}"
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to '/'
  end
  
end
