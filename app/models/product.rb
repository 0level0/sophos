class Product < ActiveRecord::Base
has_many :regions, through: :product_regions
  belongs_to :role
  has_many :banners, through: :product_banners
end
