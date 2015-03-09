module SearchHelper

  def companies_count
    return Company.count
  end

  def offers_count
    return Offer.count
  end
end
