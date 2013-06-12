require_relative '../../lib/services/sandwich_service'
require_relative '../../spec/vcr_config'
VCR.cucumber_tags do |t|
  t.tag ("list-all-sandwiches")
  t.tag ("list-all-ingredients")
end
