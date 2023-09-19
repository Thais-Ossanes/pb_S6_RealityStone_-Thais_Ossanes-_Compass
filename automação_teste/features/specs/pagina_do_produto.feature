#language: pt

@regression
@OurProducts
Funcionalidade: Seleções na Página do Produto
    SENDO um usuário do Ecommerce AdvantageOnlineShopping
    QUERO poder personalizar os produtos que irei comprar
    PARA ter uma melhor experiência de compras

    Contexto: Estar na págna de um produto
        Dado que esteja na home
        Quando realizar uma busca por um produto existente
        E acessar a páginado produto

@product_change_color
    Cenário: Trocar a cor do produto    
        Quando alterar a cor do produto
        Então deverá alterar a imagem apresentada na PDP

@increase_product_quantity
    Cenário: Aumentar a quantidade de produtos no carrinho 
        Quando aumentar a quantidadede produto
        Então deverá alterar a quantidade exibida na PDP


@increase_product_quantity_to_cart
   Cenário: Aumentar a quantidade do produto na PDP aumenta no carrinho
        Quando aumentar  a quantidade de produtos
        E adicionar ao carrinho
        Então o produto deverá ser adicionado com a quantidade aumentada

@add_product_to_cart
    Cenário: Adicionar produto ao carrinho pela Página do Produto
        Quando adicionar o produto ao carrinho
        Então o produto deverá ser adicionado ao carrinho com sucesso

          
