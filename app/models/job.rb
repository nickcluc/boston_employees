class Job < ActiveRecord::Base
  include SalaryCalculations

  has_many :employees

  validates :name, presence: true
end
