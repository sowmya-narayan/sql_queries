class CreateSalaryGrades < ActiveRecord::Migration
  def change
    create_table :salary_grades do |t|
      t.string :grade
      t.integer :lower_bond
      t.integer :upper_bond

      t.timestamps
    end
  end
end
