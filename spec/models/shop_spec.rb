require 'rails_helper'

RSpec.describe Shop, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { should belong_to(:category) }
end