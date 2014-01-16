# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

data = {"New York" => "Accounting", "Dallas" => "Sales", "Chicago" => "Research", "Boston" => "Operations"}
data.each do |location, department|
  loc = Location.create(regional_group: location)
  Department.create(name: department, location_id: loc.id)
end

["Clerk", "Staff", "Analyst", "SalesPerson", "Manager", "President"].each do |title|
  Job.create(function: title)
end

e1 = Employee.create(last_name: "Smith", first_name: "Jhon", middle_name: "Q", job_id: Job.where(function: "Clerk").last.id, manager_id: nil, hiredate: "17-Dec-1984", salary: 800, comm: nil, department_id: Department.where(name: "Research").last.id)
e2 = Employee.create(last_name: "Allen", first_name: "Kevin", middle_name: "J", job_id: Job.where(function: "SalesPerson").last.id, manager_id: e1.id, hiredate: "20-Feb-1985", salary: 1600, comm: 300, department_id: Department.where(name: "Sales").last.id)
e3 = Employee.create(last_name: "Doyle", first_name: "Jean", middle_name: "K", job_id: Job.where(function: "Manager").last.id, manager_id: e1.id, hiredate: "04-Apr-1985", salary: 2850, comm: nil, department_id: Department.where(name: "Sales").last.id)
e4 = Employee.create(last_name: "Dennis", first_name: "Lynn", middle_name: "S", job_id: Job.where(function: "Manager").last.id, manager_id: e2.id, hiredate: "15-May-1985", salary: 2750, comm: nil, department_id: Department.where(name: "Sales").last.id)
e5 = Employee.create(last_name: "Baker", first_name: "Leslie", middle_name: "D", job_id: Job.where(function: "Manager").last.id, manager_id: e3.id, hiredate: "10-Jun-1985", salary: 2200, comm: nil, department_id: Department.where(name: "Operations").last.id)
e6 = Employee.create(last_name: "Wark", first_name: "Cynthia", middle_name: "D", job_id: Job.where(function: "SalesPerson").last.id, manager_id: e3.id, hiredate: "22-Feb-1985", salary: 1250, comm: 500, department_id: Department.where(name: "Sales").last.id)
e7 = Employee.create(last_name: "Smithg", first_name: "Jhong", middle_name: "Qg", job_id: Job.where(function: "Clerk").last.id, manager_id: e4.id, hiredate: "17-Dec-1984", salary: 800, comm: nil, department_id: Department.where(name: "Accounting").last.id)
e8 = Employee.create(last_name: "Smithg", first_name: "Jhonk", middle_name: "Qk", job_id: Job.where(function: "SalesPerson").last.id, manager_id: e5.id, hiredate: "17-Dec-1984", salary: 800, comm: nil, department_id: Department.where(name: "Accounting").last.id)

sal= {1=> {700=> 1200}, 2=> {1201=> 1400}, 3=> {1401=> 2000}, 4=> {2001=> 3000}, 5=> {3001=> 9000} }
sal.each do |gr, value|
  value.each do |lb, ub|
    SalaryGrade.create(grade: gr, lower_bond: lb, upper_bond: ub)
  end
end
