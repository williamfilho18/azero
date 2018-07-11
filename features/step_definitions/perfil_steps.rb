

Dado('que acesso o meu perfil') do
  visit 'http://mark7.herokuapp.com/user_settings/profile'
end

Quando('completo o meu cadastro com:') do |table|
  @dados = table.rows_hash
  puts @dados
end

Então('vejo uma mensagem de sucesso:') do |_string|
  pending # Write code here that turns the phrase above into concrete actions
end
