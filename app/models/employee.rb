class Employee < ActiveRecord::Base
  belongs_to :job

  validates :name, :zipcode, presence: true
  validates :job_id,
    :department_id,
    :regular,
    :retro,
    :other_pay,
    :overtime,
    :injured,
    :detail,
    :quinn,
    :total, presence: true, numericality: { only_integer: true }
end
