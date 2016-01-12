namespace :employee_data do
  desc "Imports Boston employee data from API"
  task import: :environment do
    response = HTTParty.get('https://data.cityofboston.gov/resource/4swk-wcg8.json')
    response.each do |person|
      e = Employee.find_or_initialize_by(name: person["name"])
      e.name = person["name"]
      e.zipcode = person["zip"]
      e.regular = (person["regular"].to_f * 100).to_i
      e.retro = (person["retro"].to_f * 100).to_i
      e.other_pay = (person["other"].to_f * 100).to_i
      e.overtime = (person["overtime"].to_f * 100).to_i
      e.injured = (person["injured"].to_f * 100).to_i
      e.detail = (person["detail"].to_f * 100).to_i
      e.quinn = (person["quinn"].to_f * 100).to_i
      e.total = (person["total_earnings"].to_f * 100).to_i
      j = Job.find_or_create_by(name: person["title"].downcase)
      d = Department.find_or_create_by(name: person["department_name"].downcase)
      e.job = j
      e.department = d
      e.save
      p "Employee #{e.name} created!"
    end
  end
end
