class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  before do 
    response.headers['Access-Control-Allow-Origin'] = "*"
  end

  get "/closet" do
    outfits = Outfit.all
    outfits.to_json(:include=>[
      :articles,
      :comments
    ])
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


  post "/closet" do
    comment = Comment.create(comment:params[:comment], outfit_id:params[:outfit_id])
    comment.to_json
  end

end
