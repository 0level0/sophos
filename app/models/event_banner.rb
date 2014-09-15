class EventBanner < ActiveRecord::Base
  belongs_to :event
  belongs_to :banner
end
