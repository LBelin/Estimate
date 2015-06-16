class CreateFogBugzCases < ActiveRecord::Migration
  def change
    create_table :fog_bugz_cases do |t|
      t.integer :case_id
      t.string :title
      t.integer :estimated
      t.decimal :current
      t.string :person
      t.boolean :resolved?

      t.timestamps
    end
  end
end
