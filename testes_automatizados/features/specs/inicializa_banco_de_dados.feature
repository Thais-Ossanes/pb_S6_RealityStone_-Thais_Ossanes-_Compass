# language: pt

@regression
@initialize_database #essa tag fica antes de todos que vão precisar do login criado no cenário de testes

Funcionalidade: Inicializar o banco de dados
    COMO um usuário do banco ParaBank
    QUERO poder utilizar a funcionalidade de criar um cadastro
    PARA poder ter o meu login salvo no banco de dados

Contexto: Estar na home sem estar logado
    Dado que esteja na home
    E não esteja logado 

@init_db
Cenário: Inicializando o banco de dados
Quando clicar na opção  da página de administrador 
E clicar para iniciar o banco de dados 
Então deverá aparecer a mensagem de sucesso "<Database Initialized>" 

