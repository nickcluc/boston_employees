require 'rails_helper'

RSpec.describe Job, type: :model do
  it { should have_many(:employees) }

  it { should validate_presence_of(:name) }
  
end
