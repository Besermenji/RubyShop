class Basket < ActiveRecord::Base

  has_one :user
  has_many :products
end
