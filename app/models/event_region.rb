class EventRegion < ActiveRecord::Base
  belongs_to :region
  belongs_to :event
end