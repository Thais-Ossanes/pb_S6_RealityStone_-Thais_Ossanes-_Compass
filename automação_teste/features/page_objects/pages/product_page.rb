module Pages
    class ProductPage < SitePrism::Page
        set_url '/'

        elements :colors, '.productColor'
        element :main_image, '#mainImg'

        element :plus_quantity, '.plus'
        element :change_quantity, 'input[name="quantity"]'

        #def change_quantity
         #   change_quantity.text.to_i
        #end
    end
end