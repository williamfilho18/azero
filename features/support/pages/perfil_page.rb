class PerfilPage < SitePrism::Page
  element :formulario, '#user-settings-profile-edit-form'
  element :campo_empresa, '#profile-company'
  element :combo_cargo, 'select[name$=job]'

  def completa_cadastro(cadastro)
    campo_empresa.set cadastro[:empresa]
    sleep 10
  end
end
