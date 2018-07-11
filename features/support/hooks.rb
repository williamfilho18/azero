
# * é contém
# $ termina com
# ^ começa com

Before do
  @login_page = LoginPage.new
  @tarefas_page = TarefasPage.new
end

Before('@login') do
  visit '/'
  @login_page.logar('eu@papito.io', '123456')
end

After('@logout') do
  find('a[href*=dropdown]').click
  find('a[href$=logout]').click
end
