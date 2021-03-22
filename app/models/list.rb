class List < ApplicationRecord
  belongs_to :ingredient

  validates :name, presence: true, uniqueness: true
end
