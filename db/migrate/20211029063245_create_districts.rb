class CreateDistricts < ActiveRecord::Migration[6.1]
  def change
    create_table :districts do |t|
      t.string :district_name
      t.references :state, null: false, foreign_key: true

      t.timestamps
    end
  end
end
