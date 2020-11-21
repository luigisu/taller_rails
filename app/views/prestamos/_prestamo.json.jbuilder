json.extract! prestamo, :id, :fecha, :estado, :usuarios, :references, :created_at, :updated_at
json.url prestamo_url(prestamo, format: :json)
