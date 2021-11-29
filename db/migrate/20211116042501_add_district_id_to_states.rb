class AddDistrictIdToStates < ActiveRecord::Migration[6.1]
  def change
    add_column :states, :district_id, :integer
  end
end
