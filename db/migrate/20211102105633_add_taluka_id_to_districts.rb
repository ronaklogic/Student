class AddTalukaIdToDistricts < ActiveRecord::Migration[6.1]
  def change
    add_column :districts, :taluka_id, :integer
  end
end
