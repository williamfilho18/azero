#language: pt
Funcionalidade: Login
    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um usuário
    Posso acessar o sistema com meu email e senha previamente cadastrados.

    @smoke
    Cenario: Usuário autenticado

        Dado que eu acessei o sistema
        Quando faço login com "eu@papito.io" e "123456"
        Então vejo a seguinte mensagem "Olá, Fernando"

    @senha_invalida
    Cenario: Senha incorreta

        Dado que eu acessei o sistema
        Quando faço login com "eu@papito.io" e "111111"
        Então vejo a seguinte mensagem "Senha inválida."

    @usuario_404
    Cenario: Usuário não cadastrado

        Dado que eu acessei o sistema
        Quando faço login com "eu@404.io" e "123456"
        Então vejo a seguinte mensagem "Usuário não cadastrado."
