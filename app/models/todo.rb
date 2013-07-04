class Todo < ActiveRecord::Base
  attr_accessible :completed, :order, :title

  validates :title, presence: true
  validates :order, numericality: {greater_than_or_equal_to: 0}, presence: true, uniqueness: true
end
