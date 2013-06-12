require 'faraday'
require 'faraday_middleware'

class SandwichService
  def initialize
    @connection = Faraday.new 'http://pixelpt-sandwich-api.herokuapp.com' do |builder|
      builder.adapter Faraday.default_adapter
      builder.use FaradayMiddleware::Mashify
      builder.use FaradayMiddleware::ParseJson
    end
  end

  def list_all
    sandwiches 
  end

  def list_single(id)
    sandwich(id) 
  end

  def list_ingredients_for(sandwich)
    sandwich(sandwich.id).ingredients
  end

  private
  def sandwiches
    @sandwiches ||= @connection.get('/sandwiches.json').body.fetch('sandwiches')
  end

  def sandwich(id)
    sandwiches.find { |sandwich| sandwich.id == id }
  end
end
