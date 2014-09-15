class ProductBanner < ActiveRecord::Base
belongs_to :banner
belongs_to :product
end
