module Pages
    class Results < SitePrism::Page
        set_url '/overview.htm'

        element :login_success_message, ".smallText b"

        #def success_message
         #   login_success_message.visible
        #end
        
    end
end