class List < ActiveRecord::Base
  belongs_to :user
  has_many :list_items
  accepts_nested_attributes_for :list_items, :allow_destroy => true
  acts_as_votable
end
