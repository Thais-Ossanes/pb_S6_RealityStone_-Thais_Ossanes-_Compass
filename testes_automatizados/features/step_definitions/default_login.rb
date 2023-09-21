
Quando('inserir um username cadastrado {string}') do |username|
    @login = Pages::Home.new
    @login.insert_username(username)
end
  
Quando('inserir um password {string} cadastrado') do |password|
    @login.insert_password(password)
end
  
Quando('clicar no botão de login') do
    #@login.submit
    @login.submit
end

Então('deverá conter a mensagem de sucesso do login') do 
    @result_page = Pages::Results.new
    expect(@result_page).to have_login_success_message(text: "Welcome")
end