require_relative '../sections/header.rb'

module Pages 
   class Home < SitePrism::Page
        set_url '/'
        element :loader, 'body > .loader' #loader solucionado
        section :header, Sections::Header, 'header'
        element :input_email_contact_us, 'input[name="emailContactUs"]'
        element :input_message_contact_us, 'textarea[name="subjectTextareaContactUs"]'
        element :btn_send_message_contact_us, '#send_btn'
        element :success_message, '.successMessage'


        def search_for(product) #aqui ele está recebendo 'SPEAKERS'
            #header.btn_open_search.click
            #header.input_search.set product 
            header.click_and_input_text_for_search(product)
            wait_until_loader_visible #(wait: 2) ele espera no máximo 2s pelo loader
            wait_until_loader_invisible
        
            header.btn_open_search.click
            header.close_serch.click

        end

        def send_message_contact_us(message_data)
            input_email_contact_us.set message_data[:email]
            input_message_contact_us.set message_data[:message]
            btn_send_message_contact_us.click
        end
    end
end