class PostsController < ApplicationController
  def index
    @type = params[:type]
    @posts = Post.order(created_at: "DESC").page(params[:page]).per(20)
    case @type
    when "japanese" then
      @posts = Post.where(choice: "和食・日本料理").page(params[:page]).per(20)
    when "sushi" then
      @posts = Post.where(choice: "寿司・魚料理").page(params[:page]).per(20) 
    when "italian" then
      @posts = Post.where(choice: "イタリアン").page(params[:page]).per(20)
    when "french" then
      @posts = Post.where(choice: "フレンチ").page(params[:page]).per(20)
    when "tonkatsu" then
      @posts = Post.where(choice: "トンカツ").page(params[:page]).per(20)
    when "curry" then
      @posts = Post.where(choice: "カレー").page(params[:page]).per(20) 
    when "asia" then
      @posts = Post.where(choice: "アジア・エスニック").page(params[:page]).per(20)
    when "yakiniku" then
      @posts = Post.where(choice: "焼肉・ステーキ").page(params[:page]).per(20)
    when "yakitori" then
      @posts = Post.where(choice: "焼鳥・串料理").page(params[:page]).per(20)
    when "bar" then
      @posts = Post.where(choice: "居酒屋・バー").page(params[:page]).per(20)
    when "cafe" then
      @posts = Post.where(choice: "カフェ・スイーツ").page(params[:page]).per(20)
    when "other" then
      @posts = Post.where(choice: "その他").page(params[:page]).per(20)
    end
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    if @post.save
        redirect_to posts_path
    else
        render 'new'
    end
  end
  
  def edit
    @post = Post.find(params[:id])
    add_breadcrumb '記事編集', '/posts/edit'
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
        redirect_to posts_path
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
        redirect_to posts_path
    else
        render 'edit'
    end
  end
  
  private
    def post_params
        params.require(:post).permit(
        :title, #タイトル
        :file,  #写真
        :choice,  #カテゴリー
        :keyword, #キーワード
        :description, #説明
        :body #本文
        )
    end

end
