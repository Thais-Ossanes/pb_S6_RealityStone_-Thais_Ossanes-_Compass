class FooterExemplosMapeamentos < SitePrism::Section
    element :img_facebook, 'img[name="follow_facebook"]'
end

class ProductsExemplosMapeamentos < SitePrism::Section
    element :name, 'a.productName'
    element :price, 'a.productPrice'
end

class HomeExemplosMapeamentos < SitePrism::Page

    set_url '/'

    element :btn_open_search, '#search #menuSearch' #mapeamento
    elements :menu_items, '.nav-li-Links a'
    #para clicar no item 2 da lista -> menu_items[1].click (partido de 0 da direta pra esquerda conforme listado no site)
    section :footer, FooterExemplosMapeamentos, 'footer.ng-scope'
    sections :products, ProductsExemplosMapeamentos, '.categoryRight li.ng-scope'

end 

