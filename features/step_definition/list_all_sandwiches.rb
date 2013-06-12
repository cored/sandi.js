Given(/^I go to the homepage$/) do
   @sandwiches = SandwichService.new.list_all
end

Then(/^I should successfully see all sandwiches$/) do
  @sandwiches.size.should be > 0
end
