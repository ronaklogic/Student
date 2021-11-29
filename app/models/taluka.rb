class Taluka < ApplicationRecord
  belongs_to :state, dependent: :destroy
  belongs_to :district, dependent: :destroy
end
    