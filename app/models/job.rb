class Job < ActiveRecord::Base
  before_create :downcase_name
  
  include SalaryCalculations

  has_many :employees

  validates :name, presence: true

  private

  def downcase_name
    name = self.name
    self.name = name.downcase
  end
end
