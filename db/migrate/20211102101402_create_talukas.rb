class CreateTalukas < ActiveRecord::Migration[6.1]
  def change
    create_table :talukas do |t|
      t.string :name

      t.timestamps
    end
  end
end
