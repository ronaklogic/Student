class AddDistrictIdToTalukas < ActiveRecord::Migration[6.1]
  def change
    add_column :talukas, :district_id, :integer
  end
end
