Dado('que esteja na home')do
    @home_page = Home.new
    @home_page.load
end


Então('deverá conter o menu central') do
    expect(@home_page).to have_menu_center
end

