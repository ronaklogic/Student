class District < ApplicationRecord
  has_many :talukas, dependent: :destroy
  belongs_to :state, dependent: :destroy
end