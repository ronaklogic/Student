class State < ApplicationRecord
  has_many :districts, dependent: :destroy
  has_many :talukas, dependent: :destroy
end

