class Employee < ActiveRecord::Base
  belongs_to :job
  belongs_to :department

  validates :name, :zipcode, presence: true
  validates :department_id,
    :detail,
    :injured,
    :job_id,
    :other_pay,
    :regular,
    :overtime,
    :quinn,
    :retro,
    :total, presence: true, numericality: { only_integer: true }
end
