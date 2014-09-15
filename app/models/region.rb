class Region < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :products, through: :ProductRegion
  has_many :events, through: :event_regions
end
