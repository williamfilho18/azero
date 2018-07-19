Dado('que eu tenho uma tarefa com os seguintes atributos:') do |table|
  @tarefa = table.rows_hash
  DAO.new.deleta_tarefa(@tarefa[:nome])
end

Dado('eu quero taguear esta tarefa com:') do |table|
  @tags = table.hashes
end

Dado('eu ja cadastrei esta tarefa e não tinha percebido') do
  steps %(
    Quando faço o cadastro dessa tarefa
  )
end

Quando('faço o cadastro dessa tarefa') do
  @tarefas_page.wait_for_botao_novo
  @tarefas_page.botao_novo.click
  @tarefas_page.wait_for_adicionar
  @tarefas_page.adicionar.nova(@tarefa)
end

Então('devo ver esta tarefa com o status {string}') do |status_tarefa|
  tarefa_encontrada = find('#tasks tbody tr', text: @tarefa[:nome])
  expect(tarefa_encontrada).to have_content status_tarefa
end

Então('devo ver somente {int} tarefa com o nome cadastrado') do |quantidade|
  @tarefas_page.busca(@tarefa[:nome])
  registros = all('#tasks tbody tr')
  expect(registros.size).to eql quantidade
end

Então('devo ver {string} como mensagem de alerta') do |alerta|
  @tarefas_page.adicionar.wait_for_alerta
  expect(@tarefas_page.adicionar.alerta).to have_content alerta
end
