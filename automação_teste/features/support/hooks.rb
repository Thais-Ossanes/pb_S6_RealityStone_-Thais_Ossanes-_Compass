#After do
#  screenshot = Capybara.page.save_screenshot("reports/screenshots/sc.png")
#   attach(screenshot, 'image/png')
#end
#NOTE: bundle exec cucumber -p default -t@search_for_product --publish

After do |scenario|
    if scenario.failed?
        screenshot = Capybara.page.save_screenshot("reports/screenshots/sc.png")
        attach(screenshot, 'image/png')
    end
end