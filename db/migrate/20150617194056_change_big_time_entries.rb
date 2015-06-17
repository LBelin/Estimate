class ChangeBigTimeEntries < ActiveRecord::Migration
  def change
    remove_column :big_time_entries, :FeatureName
    remove_column :big_time_entries, :FBIdAndTitle
    remove_column :big_time_entries, :BudgetHrs
    remove_column :big_time_entries, :FogzStatus,
    rename_column(:big_time_entries, :Fogz, :fog_bugz_case_id)
    rename_column(:big_time_entries, :Resource, :person)
    rename_column(:big_time_entries, :HrsIn, :hours)
    rename_column(:big_time_entries, :nt, :comment)
  end
end
