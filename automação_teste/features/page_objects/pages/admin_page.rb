require_relative '../sections/header.rb'

module Pages 
   class AdminPage < SitePrism::Page
        set_url '/'
        
       # def results #aqui ele está recebendo 'SPEAKERS'
            #header.btn_open_search.click
            #header.input_search.set product 
            #results.click_and_input_text_for_search(product)
            #wait_until_loader_visible #(wait: 2) ele espera no máximo 2s pelo loader
            #wait_until_loader_invisible
        #end

        def initialize_database 
            btn_admin_page.click
            wait_until_loader_visible
            wait_until_loader_invisible
            btn_initialize_database.click
        end
    end
end