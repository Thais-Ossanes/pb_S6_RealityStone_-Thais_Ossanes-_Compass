require_relative '../sections/header.rb' #aqui ficam os objetos
require_relative '../sections/products.rb'

module Pages  #aqui vou definir os métodos 
    class SearchResults < SitePrism::Page
        set_url '/#/search' #isso pq ela já parte dessa página no site
        
        section :header, Sections::Header, 'header'
       # elements :products, 'div.categoryRight li.ng-scope' # serve para validar que os elementos estão visíveis, se eu quiser interagir com o elemento é mais adequado 'sections'
        sections :products, Sections::Products, 'div.categoryRight li.ng-scope'
        
        def access_product_page(index)
            products[index].name.click
        end

    end
end