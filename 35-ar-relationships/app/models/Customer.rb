class Customer < ActiveRecord::Base
    has_many :orders
    has_many :books, through: :orders
end