require 'factory_girl'

FactoryGirl.define do
  factory :job do
    sequence(:name) {|n| "Job#{n}" }
  end
  factory :employee do
    sequence(:name) {|n| "Employee#{n}"}
    zipcode "02127"
    total Random.rand(10000..100000)
    job
    department
  end
  factory :department do
    sequence(:name) {|n| "Department#{n}" }
  end
end
