class Event < ActiveRecord::Base
  has_many :regions, through: :event_regions
  belongs_to :event_type
  belongs_to :role
  has_many :banners, through: :banners
end
