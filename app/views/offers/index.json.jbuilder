json.array!(@offers) do |offer|
  json.extract! offer, :id, :city, :company_id, :country_code, :country_name, :currency_code, :expires_at, :nice_to_have, :perks, :published_at, :reward, :remote, :relocation_paid, :role_description, :salary_low, :salary_high, :successful?, :title, :work_from_home, :type, :tags
  json.url offer_url(offer, format: :json)
end
