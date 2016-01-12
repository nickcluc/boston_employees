class Department < ActiveRecord::Base
  include SalaryCalculations
  
  has_many :employees
  has_many :jobs, through: :employees

  validates :name, presence: true
end
