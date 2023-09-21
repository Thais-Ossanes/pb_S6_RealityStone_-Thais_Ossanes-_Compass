require_relative '../sections/header.rb'
require_relative '../sections/body.rb'

module Pages
    class Home < SitePrism::Page
        set_url '/'
        section :header, Sections::Header, 'div #headerPanel'
        section :body, Sections::Body, 'body'
        element :menu_center, 'div #rightPanel'



        element :input_username, "input[name='username']"
        element :input_password, "input[name='password']"
        element :btn_log_in, "input[value='Log In']"
        

        def tester_menu_items
            header.items_menu_center[1].click
            #binding.pry
            #no step chama items_menu_center[2].click 
        end

        def insert_username(username)
            input_username.click
            input_username.set username  
            #btn_log_in.click
        end

        def insert_password(password)
            input_password.click
            input_password.set password
        end

        def submit
            btn_log_in.click
        end
           
    end
end
