require 'rails_helper'

RSpec.describe Department, type: :model do
  it { should have_many(:employees) }
  it { should have_many(:jobs).through(:employees) }

  it { should validate_presence_of(:name) }
end
