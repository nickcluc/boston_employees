require 'rails_helper'

RSpec.describe Job, type: :model do
  it { should have_many(:employees) }

  it { should validate_presence_of(:name) }

  it "downcases before_create" do
    test_name = "Testjob"
    test_job = FactoryGirl.build(:job, name:test_name)
    test_job.save
    expect(test_job.name).to eq(test_name.downcase)
  end
end
