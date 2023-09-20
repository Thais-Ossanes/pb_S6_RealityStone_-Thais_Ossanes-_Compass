#language: pt

@regression
@home
Funcionalidade: Testes a home

Contexto: 
    Dado que esteja na home

@valid_home
Cenário: Validações da home
    Então deverá conter o menu central    

@testing_menu_left
Cenário: Testando menu esquerdo do header
    Quando clicar em um item do menu
    Então deverá direcionar para outra página