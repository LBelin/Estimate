class Anotherchange < ActiveRecord::Migration
  def change
    rename_column(:features, :actual, :current)
    add_column :fog_bugz_cases, :feature_title, :string
  end
end
