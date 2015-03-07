json.array!(@companies) do |company|
  json.extract! company, :id, :name, :description, :logo_url, :website_url
  json.url company_url(company, format: :json)
end
