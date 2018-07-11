

Dado('que acesso o meu perfil') do
  visit '/user_settings/profile'
  @perfil_page.wait_for_formulario
end

Quando('completo o meu cadastro com:') do |table|
  @perfil_page.completa_cadastro(table.rows_hash)
end

Então('vejo uma mensagem de sucesso:') do |_string|
  pending # Write code here that turns the phrase above into concrete actions
end
