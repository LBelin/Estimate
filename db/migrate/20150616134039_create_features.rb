class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :title
      t.integer :estimate
      t.decimal :actual
      t.integer :num_cases
      t.boolean :completed?
      t.boolean :active?

      t.timestamps
    end
  end
end
