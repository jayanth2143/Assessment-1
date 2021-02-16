class BrowserSetup
  def self.open_browser(browser_type)
    if browser_type.casecmp('firefox').zero?
      launch_firefox
    elsif browser_type.casecmp('chrome').zero?
      launch_chrome
    else
      browser_type.casecmp('ie').zero?
      launch_ie
      #Watir::Browser.new(browser_type)
    end
  end

  def self.launch_chrome
    chromedriver_path = File.join(Dir.getwd, '\\drivers', 'chromedriver.exe')
    Selenium::WebDriver::Chrome.driver_path = chromedriver_path
    chrome_opts = { args: ['--disable-extensions --disable-cache --ignore-certificate-errors --disable-popup-blocking --disable-translate'] }
  end
end