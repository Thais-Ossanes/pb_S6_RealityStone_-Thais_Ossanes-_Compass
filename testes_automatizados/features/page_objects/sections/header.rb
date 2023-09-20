module Sections
    class Header < SitePrism::Section

        element :btn_admin_page, 'a[href="admin.htm"]'
        element :btn_initialize_database, "button[value='INIT']"
        element :success_message, "body > div:nth-child(1) > div:nth-child(3) > div:nth-child(2) > p:nth-child(2) > b:nth-child(1)"
        
        
        
        #element :input_search, '#autoComplete'
        #element :close_serch, 'img[src$= "closeDark.png"]'

       # def click_and_input_text_for_search(text)
        #    btn_admin_page.click
         #   input_search.set text 
        # end

    end
end
