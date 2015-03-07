require 'rails_helper'

RSpec.describe Company, type: :model do
  it "as many offers" do
    c = Company.new
    c.offers.should
  end
end
