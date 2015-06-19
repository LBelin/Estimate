class Noperson < ActiveRecord::Migration
  def change
    remove_column :fog_bugz_cases, :person
  end
end
