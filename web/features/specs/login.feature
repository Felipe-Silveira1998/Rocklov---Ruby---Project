#language: pt

Funcionalidade: Login
    Sendo um usuário cadastrado
    Quero acessar o sistema da Rocklov
    Para que eu possa anunciar meus equipamentos musicais

    @login
    Cenario: Login do usuário

        Dado que acesso a página principal
        Quando submeto minhas credenciais com "lipemsilveira@hotmail.com" e "123456"
        Então sou redirecionado para o Dashboard

    Esquema do Cenario: Tentar logar

        Dado que acesso a página principal
        Quando submeto minhas credenciais com "<email_input>" e "<senha_input>"
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | email_input               | senha_input | mensagem_output                  |
            | lipemsilveira@hotmail.com | abc123      | Usuário e/ou senha inválidos.    |
            | lipemsilveira@hotmail.com | pwd123      | Usuário e/ou senha inválidos.    |
            | lipemsilveira&aol.com     | abc123      | Oops. Informe um email válido!   |
            |                           | abc123      | Oops. Informe um email válido!   |
            | lipemsilveira@hotmail.com |             | Oops. Informe sua senha secreta! |
