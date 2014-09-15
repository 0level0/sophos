class Role < ActiveRecord::Base
has_many :users ,through: :user_roles
  has_many :products
  has_many :newses
  has_many :events
  has_many :banners

 end
