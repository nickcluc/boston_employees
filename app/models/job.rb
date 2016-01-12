class Job < ActiveRecord::Base
  include SalaryCalculations

  has_many :employees

  validates :name, presence: true
  validates :average_regular,
    :average_retro,
    :average_detail,
    :average_quinn,
    :average_total,
    :average_injured,
    :average_overtime,
    :average_other_pay, numericality: { integer_only: true }
end
