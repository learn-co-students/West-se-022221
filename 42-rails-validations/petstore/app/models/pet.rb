class Pet < ApplicationRecord
  belongs_to :store
  validates :name, :breed, presence: true
  validates :name, :breed, uniqueness: true
end
