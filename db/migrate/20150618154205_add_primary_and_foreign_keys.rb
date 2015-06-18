class AddPrimaryAndForeignKeys < ActiveRecord::Migration

def change
  add_column :fog_bugz_cases, :feature_id, :integer
end

end
