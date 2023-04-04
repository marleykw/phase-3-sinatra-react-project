class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/closet" do
    outfits = Outfit.all
    outfits.to_json
  end

  delete "/closet/:id" do
    outfit = Outfit.find(params[:id])

    outfit.destroy

    outfit.to_json
  end

  post "/closet" do
    outfit = Outfit.create(
      
    )
  end

end
