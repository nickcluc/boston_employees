class RemoveAverageColumnsFromJobs < ActiveRecord::Migration
  def up
    remove_column :jobs, :average_regular
    remove_column :jobs, :average_retro
    remove_column :jobs, :average_other_pay
    remove_column :jobs, :average_overtime
    remove_column :jobs, :average_injured
    remove_column :jobs, :average_detail
    remove_column :jobs, :average_quinn
    remove_column :jobs, :average_total
  end
  def down
    add_column :jobs, :average_regular, :integer, default: 0
    add_column :jobs, :average_retro, :integer, default: 0
    add_column :jobs, :average_other_pay, :integer, default: 0
    add_column :jobs, :average_overtime, :integer, default: 0
    add_column :jobs, :average_injured, :integer, default: 0
    add_column :jobs, :average_detail, :integer, default: 0
    add_column :jobs, :average_quinn, :integer, default: 0
    add_column :jobs, :average_total, :integer, default: 0
  end
end
