Given(/^I have a sandwich$/) do
  @sandwich = SandwichService.new.list_single(111)
end

When(/^I ask for the ingridients$/) do
  @ingredients = SandwichService.new.list_ingredients_for(@sandwich)
end

Then(/^I successfully retrieve all the ingridients$/) do
  @ingredients.count.should be > 0
end
