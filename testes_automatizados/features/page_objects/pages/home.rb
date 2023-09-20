require_relative '../sections/header.rb'

module Pages
    class Home < SitePrism::Page
        set_url '/'
        section :header, Sections::Header, 'div #headerPanel'

        element :menu_center, 'div #rightPanel'

        MENU_OPTION_MAPPING = {
            "About_Us" => "/about.htm",
            "Services" => "/services.htm",
            "Admin_Page" => "/pagina-desejada-3"
        }

        def tester_menu_items
            header.items_menu_center[1].click
            header.items_menu_center[2].click
            #header.items_menu_center[3].click
            #header.items_menu_center[4].click
            #header.items_menu_center[5].click
    
            #binding.pry
            #no step chama items_menu_center[2].click 
        end
    end
end
