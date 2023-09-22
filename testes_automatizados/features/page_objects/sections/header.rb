module Sections
    class Header < SitePrism::Section

        elements :items_menu_left, '.leftmenu li a'

        element :btn_admin_page, 'a[href="admin.htm"]'
        element :btn_initialize_database, "button[value='INIT']"
        element :about_us, 'title'

    end
end
