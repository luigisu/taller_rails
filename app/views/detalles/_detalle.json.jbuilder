json.extract! detalle, :id, :cantida, :prestamos_id, :libros_id, :created_at, :updated_at
json.url detalle_url(detalle, format: :json)
