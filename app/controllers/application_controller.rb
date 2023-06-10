class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  before do 
    response.headers['Access-Control-Allow-Origin'] = "*"
  end

  get "/articles" do
    items = Article.all.includes(:comments)
    items.to_json(:include => :comments)
  end

  post "/articles" do
    item = Article.create(name:params[:name], url:params[:image], price:params[:price], purchase_date:params[:date])
    item.to_json
  end

  patch "/articles/:id" do
    item = Article.find(params[:id])
    item.update(last_worn: params[:last_worn], price: params[:price])
    item.to_json
  end

  delete "/articles/:id" do 
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
