require 'rails_helper'

RSpec.describe Employee, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:regular) }
  it { should validate_presence_of(:retro) }
  it { should validate_presence_of(:other_pay) }
  it { should validate_presence_of(:overtime) }
  it { should validate_presence_of(:injured) }
  it { should validate_presence_of(:quinn) }
  it { should validate_presence_of(:total) }
  it { should validate_presence_of(:zipcode) }

  it { should validate_numericality_of(:job_id) }
  it { should validate_numericality_of(:department_id) }
  it { should validate_numericality_of(:regular) }
  it { should validate_numericality_of(:retro) }
  it { should validate_numericality_of(:other_pay) }
  it { should validate_numericality_of(:overtime) }
  it { should validate_numericality_of(:injured) }
  it { should validate_numericality_of(:detail) }
  it { should validate_numericality_of(:quinn) }
  it { should validate_numericality_of(:total) }
end
