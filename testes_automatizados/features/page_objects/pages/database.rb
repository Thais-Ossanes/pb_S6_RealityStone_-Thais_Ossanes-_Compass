module Pages
    class Database < SitePrism::Page
        set_url '/admin.htm'

        element :btn_initialize_database, "button[value='INIT']"
        element :success_message, "div#rightPanel p b"
        
    end
end