# Boston City Employee Salary Data API
[![Codeship Status for nickcluc/boston_employees](https://codeship.com/projects/976a9d60-9b71-0133-e4b8-7a41677d4861/status?branch=master)](https://codeship.com/projects/126788)
[![Coverage Status](https://coveralls.io/repos/nickcluc/boston_employees/badge.svg?branch=master&service=github)](https://coveralls.io/github/nickcluc/boston_employees?branch=master)

This application parses through an available resource on the web [https://data.cityofboston.gov/Finance/Employee-Earnings-Report-2014/4swk-wcg8] and given a job title,
will return specific information including **average salary**, **maximum salary**, **minimum salary**, and a **list of employees** with that job title.

## Quick Set Up

- Clone the repo ```git clone https://github.com/nickcluc/boston_employees.git```
- Run ```bundle install```
- Run ```rake db:migrate```
- Run ```rake employee_data:import```
- Run ```rails server```
- Navigate your browser to ```locahost:3000```
- If you want a specific job title, navigate to ```locahost:3000?job_name=admin asst```

## OR If You Want To Skip Right To The Good Stuff
[https://glacial-forest-2757.herokuapp.com/?job_name=admin%20asst]

##### Try a few different job titles:
- Asst Corp Counsel Iii
- Admin Asst
- Prin Clerk

## Models
![alt text](./employees_er_diagram.png "ER Diagram")

## How It Works
A rake task was created to parse through a JSON version of the Boston Employees Earnings Report. This task an be set up via a cron job to run periodically and repopulate, update and create new records as they are added to the report. This method (parse and store on a local DB) was chosen so that in case the resource was ever taken offline, the API could still function with the data in the DB.

This employee data is then serialized to include the appropriate values (average, min, max salaries) and job information (name, list of employees, etc.) to be able to build upon the desired requirements going forward.

# API
There is only one call, a ```GET``` to the jobs resource. This resource accepts a ```job_name``` param. If there is no ```job_name``` param, the first 10 jobs in the database are returned. If the no job is found from the ```job_name``` param, the JSON returns an error message.

# Design Decisions
The first design decision was to break out the Job records and department records into separate models. That way through ActiveRecord relations, relational data could be retireved quickly and easily.

Secondly, was to design the API to accept a parameter of job_name. This was the key to pull the correct data and calculate the correct data.

As stated above, the largest design decision, in my opinion, was to parse the existing JSON into objects in the database. There are a few reasons why:
  - Minimize external API calls
  - Ensure that the functionality of the application does not rely on the external API once the initial seeding takes place
  - When the records are associated correctly, relational data is retrieved much faster and in a way that is native to ActiveRecord instead of parsing through a document to find a specific record


# TODO
1. Implement a departments controller to pull average salaries by departments
2. Implement a cities model & controller to display average salaries by city

### Other information
- Code Samples:
  - Ongoing Rails + AngularJS project (https://github.com/nickcluc/rails_angular_pickem)
  - Golf / Social Networking Application (https://github.com/nickcluc/golf)
  - Sample Dashboard (https://github.com/nickcluc/EduMetricsDashboard)
- LinkedIn:
  - https://www.linkedin.com/in/nickclucas
