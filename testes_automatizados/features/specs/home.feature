#language: pt

@regression
@home
Funcionalidade: Testes na home

Contexto: 
    Dado que esteja na home

@valid_home
Cenário: Validações da home
    Então deverá conter o menu central    

@testing_menu_left
Cenário: Testando menu esquerdo do header
    Quando clicar na opção do menu <opcao_menu>
    Então deverá direcionar para a página <pagina_desejada>

  Exemplos:
    | opcao_menu   | pagina_desejada    |
    | About_Us     | /pagina-desejada-1 |
    | Services     | /pagina-desejada-2 |
    | Admin_Page   | /pagina-desejada-3 |
