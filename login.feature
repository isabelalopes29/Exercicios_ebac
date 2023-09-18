            #language: pt

            Funcionalidade: Tela de login
            Como aluno do Portal EBAC
            Quero me autenticar
            Pra visualizar minhas notas

            Contexto:
            Dado que eu acesse a página de autentificação do portal EBAC

            Cenário: Autentificação válida
            Quando eu digitar o usuário "joao@ebac.com.br"
            E senha "senha@123"
            Então deve exibir uma mensagem de boas vindas: "olá joao"

            Cenario: Usuário inexistente
            Quando eu digitar o usuário "xxxxx@ebac.com.br"
            E senha "senha@123"
            Então deve exibir uma mensagem de alerta: "usuário inexistente"

            Cenario: Usuário com senha inválida
            Quando eu digitar o usuário "joao@ebac.com.br"
            E senha "hjjvcx@123"
            Então deve exibir uma mensagem de alerta: "usuário ou senha inválidos"

            //Tabela de exemplo:
            Esquema do Cenario: Autenticar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuário            | senha       |mensagem|
            | "joao@ebac.com.br" | "teste@123" | "olá joao" |
            | "joao@ebac.com.br" | "teste@123" | "olá joao" |
            | "joao@ebac.com.br" | "teste@123" | "olá joao" |
            
            


