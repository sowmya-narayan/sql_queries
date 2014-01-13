class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :last_name
      t.string :first_name
      t.string :middle_name
      t.integer :job_id
      t.integer :manager_id
      t.date :hiredate
      t.integer :salary
      t.integer :comm
      t.integer :department_id

      t.timestamps
    end
  end
end
