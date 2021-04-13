class Book < ActiveRecord::Base
    belongs_to :author
    belongs_to :genre

    has_many :orders
    has_many :customers, through: :orders
end