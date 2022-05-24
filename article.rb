require 'sinatra'
require 'json'

get '/show/:num' do
  hash = File.open("numbersNFT/jsons/#{params[:num]}.json"){ |f| JSON.load(f) }
  #hash["image"] = "http://localhost:4567/images/#{params[:num]}.png"
  hash.to_json
end

get '/images/:num' do
  @imgsrc = "/images/#{params[:num]}.png"
  erb :image
end

# post '/edit' do
#   body = request.body.read

#   if body == ''
#     status 400
#   else
#     body.to_json
#   end
# end
