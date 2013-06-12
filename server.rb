require 'sinatra'
require 'active_support'

get '/' do
  SandwichService.new.list_all.to_json
end

get '/sandwiches/:id/ingredients' do 
  service = SandwichService.new
  sandwich = service.list_single(params[:id])
  service.list_ingredients_for(sandwich).to_json
end
