class Store < ApplicationRecord
  has_many :pets, :dependent => :destroy

  validates :name, :location, presence: true
end
