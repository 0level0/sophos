class Banner < ActiveRecord::Base
belongs_to :role
  belongs_to :multimedium
  has_many :products, through: :product_banners
  has_many :event_banners
end
