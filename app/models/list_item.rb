class ListItem < ActiveRecord::Base
  belongs_to :list
  acts_as_votable 
end
