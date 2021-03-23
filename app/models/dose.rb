class Dose < ApplicationRecord
  belongs_to :list
  belongs_to :ingredient

  validates :list, uniqueness: { scope: :ingredient }
end
