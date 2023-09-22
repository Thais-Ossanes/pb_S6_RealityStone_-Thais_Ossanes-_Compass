module Pages
    class Results < SitePrism::Page
        set_url '/overview.htm'

        elements :login_success_message, ".smallText b"

        def results_pages(opcao_menu)
            
            items_menu_left.click
        end

        #def success_message
         #   login_success_message.visible
        #end
        
    end
end