require 'rails_helper'

RSpec.describe Job, type: :model do
  it { should have_many(:employees) }

  it { should validate_presence_of(:name) }
  it { should validate_numericality_of(:average_regular) }
  it { should validate_numericality_of(:average_retro) }
  it { should validate_numericality_of(:average_other_pay) }
  it { should validate_numericality_of(:average_overtime) }
  it { should validate_numericality_of(:average_injured) }
  it { should validate_numericality_of(:average_detail) }
  it { should validate_numericality_of(:average_quinn) }
  it { should validate_numericality_of(:average_total) }
end
