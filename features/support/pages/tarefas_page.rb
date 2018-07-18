
class AdicionarPage < SitePrism::Section
  element :campo_nome, 'input[name=title]'
  element :campo_data, 'input[name=dueDate]'
  element :botao_cadastrar, '#form-submit-button'

  def nova(tarefa)
    campo_nome.set tarefa[:nome]
    campo_data.set tarefa[:data]
    botao_cadastrar.click
  end
end

class TarefasPage < SitePrism::Page
  element :ola, '.panel-body h3'
  element :botao_novo, '#insert-button'

  section :adicionar, AdicionarPage, '#add-task-view'
end
