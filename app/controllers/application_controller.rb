class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  before do 
    response.headers['Access-Control-Allow-Origin'] = "*"
  end

  get "/closet" do
    items = Article.all
    items.to_json
  end

  post "/closet" do
    item = Article.create(name:params[:name], url:params[:image], price:params[:price], purchase_date:params[:date])
    item.to_json
  end

  patch "/closet/:id" do
    item = Article.find(params[:id])
    item.update(last_worn: params[:last_worn])
    item.to_json
  end

  get "/closet/:id" do
    item = Article.includes(:comments).find(params[:id])
    item.to_json(:include => :comments)
  end

  delete "/closet/:id" do 
    item = Article.find(params[:id])
    item.destroy
    item.to_json
  end

  get "/comments/:id" do 
    comments = Comment.find(params[:id])
    comments.to_json
  end

  delete "/comments/:id" do 
    comment = Comment.find(params[:id])
    comment.destroy
    comment.to_json
  end


  post "/comments" do
    comment = Comment.create(comment:params[:comment], article_id:params[:article_id])
    comment.to_json
  end

end
