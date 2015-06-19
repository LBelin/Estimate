class Makeconsistent < ActiveRecord::Migration
  def change
    rename_column(:fog_bugz_cases, :estimated, :estimate)
    rename_column(:big_time_entries, :WorkDate, :date)
    add_column :fog_bugz_cases, :percentage, :integer
    add_column :features, :percentage, :integer
  end
end
