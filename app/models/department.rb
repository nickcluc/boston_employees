class Department < ActiveRecord::Base
  has_many :employees
  has_many :jobs, through: :employees

  validates :name, presence: true
end
