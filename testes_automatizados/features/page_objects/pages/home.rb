require_relative '../sections/header.rb'
require_relative '../sections/body.rb'

module Pages
    class Home < SitePrism::Page
        set_url '/'
        section :header, Sections::Header, 'div #headerPanel'
        section :body, Sections::Body, 'body'
        element :menu_center, 'div #rightPanel'
        element :div_login, 'div#loginPanel'
        elements :btn_admin_page, ".leftmenu a"
        

        element :input_username, "input[name='username']"
        element :input_password, "input[name='password']"
        element :btn_log_in, "input[value='Log In']"
         

        def click_option(opcao_menu)
            menu_option = find_menu_option_by_name(opcao_menu)
            raise "Opção de menu não encontrada: #{opcao_menu}" unless menu_option
      
            menu_option.find('a').click
        end
      
          private
      
        def find_menu_option_by_name(name)
            menu.find('li', text: name)
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

# pages/menu.rb


  
      