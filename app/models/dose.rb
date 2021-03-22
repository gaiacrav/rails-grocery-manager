class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :list

  validates :list, uniqueness: { scope: :ingredient }
end
