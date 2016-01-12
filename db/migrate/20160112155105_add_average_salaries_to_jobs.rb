class AddAverageSalariesToJobs < ActiveRecord::Migration
  def change
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
