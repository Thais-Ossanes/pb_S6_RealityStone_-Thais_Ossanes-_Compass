Dado('não esteja logado') do 
    @confirm_home = Pages::Home.new
    expect(@confirm_home).to have_div_login
end
  
Quando('clicar na opção  da página de administrador') do 
    @confirm_home.btn_admin_page[4].click
end
  
Quando('clicar para iniciar o banco de dados') do 
    #@database_page = Pages::Database.new
    #@database_page.load  # Carrega a página /db
    #binding.pry
    #@database_page.btn_initialize_database.click
    #não encontro o banco de dados
end
  
Então('deverá aparecer a mensagem de sucesso {string}') do |success_message|
     expect(@database_page).to have_text(success_message)
end