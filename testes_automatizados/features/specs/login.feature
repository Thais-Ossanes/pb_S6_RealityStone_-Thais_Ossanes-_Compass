# language: pt

@regression
@init_database
@login

Funcionalidade: Realizar o login
    COMO um usuário do banco ParaBank
    QUERO poder realizar o login na home
    PARA poder acessar as funcionalidades bancárias

Contexto: Estar na home sem estar logado
    Dado que esteja na home
    E não esteja logado

Cenário: Acessando os itens do menu esquerdo
Quando clicar na opção do menu
Então deverá direcionar para outra página

@to_outside_parabank
Esquema do Cenário: Acessando opções que direcionam para fora da aplicação
    Quando clicar em "<opções_especiais>"
    Então deverá direcionar para fora da plataforma

|  opções_especiais |
|Products           |
|Locations          |