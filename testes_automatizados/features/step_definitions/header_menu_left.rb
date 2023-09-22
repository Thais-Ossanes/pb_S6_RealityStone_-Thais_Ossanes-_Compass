Quando('clicar na opção do menu {string}') do |opcao_menu|
    @menu_left = Pages::Home.new
    @menu_left.click_option(opcao_menu)

    @results = Pages::Results.new
    @results.results_pages
end
  
Então('deverá direcionar para fora da home') do
    expect(page.current_url).not_to eq(set_url)
end