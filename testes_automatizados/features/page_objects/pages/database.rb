module Pages
    class Database < SitePrism::Page
        set_url '/db.htm'

        element :btn_initialize_database, "//button[normalize-space()='Initialize']"
        
    end
end