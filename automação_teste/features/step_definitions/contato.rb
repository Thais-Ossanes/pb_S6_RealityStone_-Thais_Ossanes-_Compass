Quando ('entrar em contato pelo formulário da home')do
    contact_data = Factory::Dynamic.message_for_contact 
    #element.set contact_data[:email]
    #element.set contact_data[:message]
    @home_page.send_message_contact_us(contact_data)
    #binding.pry

end
        
Então ('deverá apresentar um modal de mensagem enviada')do
    #binding.pry 
    expect(@home_page).to have_success_message
end