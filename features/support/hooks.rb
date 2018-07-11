
# * é contém
# $ termina com
# ^ começa com

Before do
  @login_page = LoginPage.new
  @tarefas_page = TarefasPage.new
  @perfil_page = PerfilPage.new
end

Before('@login') do
  visit '/'
  @login_page.logar('eu@papito.io', '123456')
  @tarefas_page.wait_for_ola  
end

After('@logout') do
  find('a[href*=dropdown]').click
  find('a[href$=logout]').click
end
