class Todo < ActiveRecord::Base
  attr_accessible :completed, :order, :title
end
