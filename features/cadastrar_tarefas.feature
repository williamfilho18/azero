#language: pt

@sprint2
Funcionalidade: Cadastrar tarefas
    Para que eu possa organizar minhas atividades
    Sendo um usuário cadastrado
    Posso cadastrar novas tarefas
    
    @login
    Cenario: Nova tarefa

        Dado que eu tenho uma tarefa com os seguintes atributos:
            | nome | Planejar viagem para Amsterdam |
            | data | 30/07/2018                     |
        E eu quero taguear esta tarefa com:
            | tag     |
            | viagem  |
            | mala    |
            | doidao  |
        Quando faço o cadastro dessa tarefa
        Então devo ver está tarefa com o status "Em andamento"
        E devo ver somente 1 tarefa com o nome cadastrado