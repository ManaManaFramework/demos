require 'watir'
require 'watir-webdriver'

def browser
  if @browser.nil?
    puts "*************************************"
    puts "A new Chrome window has been opened."
    puts "Alt-Tab to see the browser in action!"
    puts "*************************************"
  end
  @browser ||= Watir::Browser.new :chrome
end
