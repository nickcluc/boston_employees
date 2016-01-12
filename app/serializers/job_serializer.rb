class JobSerializer < ActiveModel::Serializer
  attributes :name, :average_salary, :max_salary, :min_salary

  has_many :employees

  def name
    object.name.titleize
  end
end
