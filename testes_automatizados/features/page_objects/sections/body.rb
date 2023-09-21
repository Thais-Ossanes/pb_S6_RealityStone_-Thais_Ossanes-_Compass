
module Sections
    class Body < SitePrism::Section

        element :username, "input[name='username']"
        element :password, "input[name='password']"
        element :btn_log_in, "input[value='Log In']"
        element :success_message, ".smallText" #esse elemento tem que conter o nome do cadastrado
    

    end
end