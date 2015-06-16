class CreateBigTimeEntries < ActiveRecord::Migration
  def change
    create_table :big_time_entries do |t|
      t.integer :Fogz
      t.string :FeatureName
      t.string :FBIdAndTitle
      t.string :FogzStatus
      t.datetime :WorkDate
      t.string :Resource
      t.decimal :HrsIn
      t.integer :BudgetHrs
      t.string :nt

      t.timestamps
    end
  end
end
