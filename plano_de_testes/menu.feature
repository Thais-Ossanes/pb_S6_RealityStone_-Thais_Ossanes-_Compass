#language: pt

Funcionalidade: Menu da Tela inicial

Contexto: Estar na home sem estar logado
    Dado que esteja na home
    E não esteja logado

Cenário: Acessando os itens do menu esquerdo
Quando clicar na opção do menu
Então deverá direcionar para outra página

Esquema do Cenário: Acessando opções que direcionam para fora da aplicação
    Quando clicar em "<opções_especiais>" 
    Então deverá direcionar para fora da plataforma

|  opções_especiais |
|Products           |
|Locations          |