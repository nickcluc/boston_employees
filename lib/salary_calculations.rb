module SalaryCalculations
  def average_salary(type=:total)
    (self.employees.average(type).to_i)/100.0
  end
  def max_salary(type=:total)
    (self.employees.maximum(type).to_i)/100.0
  end
  def min_salary(type=:total)
    (self.employees.minimum(type).to_i)/100.0
  end
end
