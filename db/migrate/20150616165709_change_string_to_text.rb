class ChangeStringToText < ActiveRecord::Migration
  def change
    change_column BigTimeEntry, 'nt', :text
  end
end
