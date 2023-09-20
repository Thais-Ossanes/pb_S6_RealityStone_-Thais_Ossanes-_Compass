
class Home < SitePrism::Page
    set_url '/'

    element :menu_center, 'div #rightPanel'

    elements :items_menu_center, '.leftmenu li'
    #no step chama items_menu_center[2].click 
end
