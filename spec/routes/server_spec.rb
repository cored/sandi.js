require_relative '../spec_helper'

describe 'Server' do 
  it "return list of sandwiches" do 
    get '/'
    last_response.should be_ok
    expect(last_response.body).to include 'ingredients'
  end

  it "return list of ingredients for a sandwich" do 
    get '/sandwiches/:id/ingredients', :id => 111
    last_response.should be_ok
  end
end
