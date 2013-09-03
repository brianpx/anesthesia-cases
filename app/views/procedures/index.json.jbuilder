json.array!(@procedures) do |procedure|
  json.extract! procedure, :name, :beginning_age
  json.url procedure_url(procedure, format: :json)
end
