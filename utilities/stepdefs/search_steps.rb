step /^Visit (.+)$/ do |url|

  browser.goto url

end


step /^Fill in the search field with (.+)$/ do |search_term|

  sleep 0.5
  browser.text_field(name: 'q').set search_term

end



step /^Submit the search query$/ do

  sleep 0.5
  browser.button(name: 'btnG').click

end



step /^The results page should show (.+)$/ do |search_result|

  browser.text.include? search_result

end



step /^Click on the link named (.+)$/ do |site_name|

  sleep 0.5
  browser.as.select{ |a| a.text =~ /#{ site_name }/ }.first.click
  sleep 3

end
