Before() do
    @browser = BrowserSetup.open_browser(ENV['BROWSER_TYPE'])
    # @browser.driver.manage.window.maximize
end

After('@close') do
  @browser.close
end


