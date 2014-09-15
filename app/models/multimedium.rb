class Multimedium < ActiveRecord::Base
  has_many :products, through: :product_banners
  has_many :banners
  belongs_to :multimedium_type
end
