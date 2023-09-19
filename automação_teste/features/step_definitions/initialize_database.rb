                                                                                                                                       

Quando('clicar na opção {string}') do |string|                               
    @admin_page = Pages::AdminPage.new
    @admin_page.initialize_database
end                                                                          
                                                                             
Quando('clicar em {string}') do |string|                                     
    @admin_page = Pages::AdminPage.new
    @admin_page.initialize_database
end                                                                          
                                                                               
Então('deverá aparecer {string}') do |string|                        
    expect(admin_page).to have_content(string)
end                                                                          