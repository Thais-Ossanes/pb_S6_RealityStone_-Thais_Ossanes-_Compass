module Sections
    class Header < SitePrism::Section
        element :btn_admin_page, 'a[href="admin.htm"]'
        element :btn_initialize_database, "button[value='INIT']"
        #element :input_search, '#autoComplete'
        #element :close_serch, 'img[src$= "closeDark.png"]'

       # def click_and_input_text_for_search(text)
        #    btn_admin_page.click
         #   input_search.set text 
        # end

    end
end
