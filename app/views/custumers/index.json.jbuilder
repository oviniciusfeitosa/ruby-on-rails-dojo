json.array!(@custumers) do |custumer|
  json.extract! custumer, :id, :name, :date_of_brith, :cpf, :ammount_of_haircuts
  json.url custumer_url(custumer, format: :json)
end
