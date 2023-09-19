Quando('acessar a páginado produto') do
    #@search_results_page.products.first.name.click #assim ele acessa a pagina do produto PDP
    @search_results_page.access_product_page #novo método que faz o igual ao de cima mas está refatorado
    @product_page = Pages::ProductPage.new
    #binding.pry
end

Quando('alterar a cor do produto') do
    # binding.pry
    @img_before = @product_page.main_image['src']
    @product_page.colors[1].click
end

Então('deverá alterar a imagem apresentada na PDP') do
    expect(@product_page.main_image['src']).not_to eql @img_before
end

Quando('aumentar a quantidadede produto') do
    @product_page.plus_quantity
    @product_page.plus_quantity.click
    @product_page = Pages::ProductPage.new
    #binding.pry
end

Então('deverá alterar a quantidade exibida na PDP') do
    #expect(@product_page.plus_quantity).to have_change_quantity > 0
    expect(@product_page.change_quantity).not_to eq(0) #está retornando 'nill' no debug
    binding.pry 
end
  