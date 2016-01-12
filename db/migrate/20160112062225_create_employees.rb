class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name, null: false
      t.integer :job_id, null: false
      t.integer :department_id, null: false
      t.integer :regular, null: false, default: 0
      t.integer :retro, null: false, default: 0
      t.integer :other_pay, null: false, default: 0
      t.integer :overtime, null: false, default: 0
      t.integer :injured, null: false, default: 0
      t.integer :detail, null: false, default: 0
      t.integer :quinn, null: false, default: 0
      t.integer :total, null: false, default: 0
      t.string :zipcode, null: false

      t.timestamps null: false
    end
  end
end
