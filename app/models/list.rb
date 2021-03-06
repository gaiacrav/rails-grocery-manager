class List < ApplicationRecord
  has_many :doses
  has_many :ingredients, through: :doses
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
end
