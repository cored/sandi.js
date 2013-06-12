require_relative '../vcr_config'
require_relative '../../lib/services/sandwich_service'

describe SandwichService do 
  let(:service) { SandwichService.new }
  context "#list_all" do 
    subject { VCR.use_cassette('all_sandwiches') { service.list_all } }

    its(:count) { should be > 0 }
  end

  context "#list_single" do 
    let(:id) { 111 }
    subject { VCR.use_cassette('single_sandwich') { service.list_single(id) } }

    its(:id) { should === 111 }
    its(:title) { should == "El de al lao" }
  end

  context "#list_ingredients_for" do 
    let(:sandwich) { stub id:111 }
    subject do 
      VCR.use_cassette('ingredients_for_sandwich') do 
        service.list_ingredients_for(sandwich)
      end
    end

    its(:count) { should be > 0 }
  end
end
