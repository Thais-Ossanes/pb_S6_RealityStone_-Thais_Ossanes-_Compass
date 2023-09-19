module Sections
    class Products < SitePrism::Section
        element :name, 'a.productName'
        element :price, 'a.productPrice'
        element :image, 'img.imgProduct'

        #validação de site prism para fazer no terminal e saber se está recebendo algum valor nesses 3 variáveis
        # expect(@search_results_page.products.first.all_there?).to be_truthy
        #ele vai saber se o primeiro elemento apresenta preço, nome e imagem
    end
end