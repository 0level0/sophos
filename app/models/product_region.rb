class ProductRegion < ActiveRecord::Base
  belongs_to :region
  belongs_to :product
end
