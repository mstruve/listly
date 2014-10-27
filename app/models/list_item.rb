class ListItem < ActiveRecord::Base
  belongs_to :list
  has_one :user, :through => :list
  acts_as_votable
end
