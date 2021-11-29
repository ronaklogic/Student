class AddTalukaToState < ActiveRecord::Migration[6.1]
  def change
    add_reference :states, :taluka, foreign_key: true
  end
end
