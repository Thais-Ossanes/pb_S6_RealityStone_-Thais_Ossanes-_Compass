
Quando('clicar na opção do menu About_Us') do
    pending # Write code here that turns the phrase above into concrete actions
end

Quando('clicar na opção do menu Services') do
    pending # Write code here that turns the phrase above into concrete actions
end

Quando('clicar na opção do menu Admin_Page') do
    pending # Write code here that turns the phrase above into concrete actions
end


Quando("clicar na opção do menu {string}") do |opcao_menu|
    @testing_menu_left = Pages::Home.new 
    @testing_menu_left.tester_menu_items(opcao_menu) # Substitua click_opcao_menu pelo método que clica na opção do menu
  
end
  
  Então("deverá direcionar para a página {string}") do |pagina_desejada|
    url_esperada = Header::MENU_OPTION_MAPPING[opcao_menu]
    url_esperada(pagina_desejada)
    expect(page.current_url).to include(url_esperada)
end
  