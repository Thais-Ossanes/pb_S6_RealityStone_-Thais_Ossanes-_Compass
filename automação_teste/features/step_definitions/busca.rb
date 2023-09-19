
Dado('que esteja na home') do     
    @home_page = Pages::Home.new
    @home_page.load
    #binding.pry 
end                                                                           
                                                                                
Quando('realizar uma busca por um produto existente') do  
    product_for_search = Factory::Static.static_data('valid_product')
    @home_page.search_for(product_for_search)
    @search_results_page = Pages::SearchResults.new                                 
    #binding.pry                                        
end

Quando('buscar pelo produto {string}') do |product|
    #binding.pry aparecem os 5 itens em cada pausa se for verificada a variável
    @home_page.search_for(product)
    @search_results_page = Pages::SearchResults.new

end

Então('deverão ser retornados resultados na busca') do     
    #binding.pry #debugando com o pry: @search_results_page, @search_results_page.products,  @search_results_page.products.first,  @search_results_page.products.first.text, expect(@search_results_page).not_to have_products 
    expect(@search_results_page).to have_products
end                                                                           

    
    
