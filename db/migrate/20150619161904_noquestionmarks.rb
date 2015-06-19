class Noquestionmarks < ActiveRecord::Migration
  def change
    rename_column(:features, :completed?, :resolved)
    rename_column(:features, :active?, :active)
    rename_column(:fog_bugz_cases, :resolved?, :resolved)
  end
end
