class CreateFogBugzCases < ActiveRecord::Migration
  def change
    create_table :fog_bugz_cases, {:primary_key => :case_id} do |t|
      t.integer :case_id
      t.string :title
      t.integer :estimated
      t.decimal :current
      t.string :person
      t.boolean :resolved?
      t.integer :feature_id

      t.timestamps
    end
  end
end
