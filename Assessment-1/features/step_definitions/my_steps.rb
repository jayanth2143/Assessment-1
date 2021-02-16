When(/^user enters the google website$/) do
  on_page(SetUp) do |p|
    p.page_url(url)
  end
end

When(/^enter a "([^"]*)" in the search box$/) do |arg1|
  on_page(SetUp) do |p|
    p.lookup(arg)
    end
end

When(/^the results for the search show up$/) do
  self.where(word: "Duck").present?
end