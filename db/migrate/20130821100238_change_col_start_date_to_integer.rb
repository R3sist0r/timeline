class ChangeColStartDateToInteger < ActiveRecord::Migration
  def change
  	change_column :events, :startDate, :integer
  	change_column :events, :endDate, :integer
  end
end
