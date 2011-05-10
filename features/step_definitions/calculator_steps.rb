When /^I touch the (\d) button$/ do |digit|
  touch("button marked:'#{digit}'")
end

When /^I touch the plus button$/ do
  touch("button marked:'plus'")
end

When /^I touch the C button$/ do
  touch("button marked:'cancel'")
end

When /^I touch the equal button$/ do
  touch("button marked:'equal'")
end

When /^I touch the dot button$/ do
  touch("button marked:'dot'")
end

Then /^I should see ([\d\.]+) on the display$/ do |result|
  display = frankly_map("label marked:'display'", "text").first
  display.should == result
end

