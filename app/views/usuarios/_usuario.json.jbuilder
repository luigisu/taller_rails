json.extract! usuario, :id, :nombres, :apellidos, :direccion, :telefono, :login, :pasword, :email, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
