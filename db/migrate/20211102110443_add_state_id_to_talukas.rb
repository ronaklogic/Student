class AddStateIdToTalukas < ActiveRecord::Migration[6.1]
  def change
    add_column :talukas, :state_id, :integer
  end
end
