class Job < ActiveRecord::Base
  include SalaryCalculations

  has_many :employees

  validates :name, presence: true
  before_create :downcase_name

  private

  def downcase_name
    name = self.name
    self.name = name.downcase
  end
end
