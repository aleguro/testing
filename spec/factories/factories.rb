FactoryBot.define do

  before(:all) do
    @shop = create(:shop)
  end

  factory :shop do
    name { "Tropicana" }
    category_id { Category.first.id }
  end
end