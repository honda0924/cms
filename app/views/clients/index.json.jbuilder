json.array! @clients do |client|
  json.id client.id
  json.company_name1 client.company_name1
  json.company_name2 client.company_name2
end