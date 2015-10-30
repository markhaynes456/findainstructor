class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :profile, :text
    add_column :users, :first_pass_rate, :float
    add_column :users, :second_pass_rate, :float
    add_column :users, :started_teaching, :date
    add_column :users, :students_taught, :integer
    add_column :users, :working_hours_monday_start, :time
    add_column :users, :working_hours_monday_end, :time
    add_column :users, :working_hours_tuesday_start, :time
    add_column :users, :working_hours_tuesday_end, :time
    add_column :users, :working_hours_wednesday_start, :time
    add_column :users, :working_hours_wednesday_end, :time
    add_column :users, :working_hours_thursday_start, :time
    add_column :users, :working_hours_thursday_end, :time
    add_column :users, :working_hours_friday_start, :time
    add_column :users, :working_hours_friday_end, :time
    add_column :users, :working_hours_saturday_start, :time
    add_column :users, :working_hours_saturday_end, :time
    add_column :users, :working_hours_sunday_start, :time
    add_column :users, :working_hours_sunday_end, :time
    add_column :users, :hourly_rate, :integer
  end
end
