module Sections
    class Footer < SitePrism::Section
        element :btn_open_search, '#search #menuSearch'
        element :input_search, '#autoComplete'
        element :close_serch, 'img[src$= "closeDark.png"]'

        def click_and_input_text_for_search(text)
            btn_open_search.click
            input_search.set text 
        end

    end
end