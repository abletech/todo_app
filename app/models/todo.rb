class Todo < ActiveRecord::Base
  attr_accessible :completed, :order, :title

  validates :title, presence: true
  validates :order, numericality: {greater_than_or_equal_to: 0}, presence: true, uniqueness: true

  def toggle_completed
    self.completed = !completed
  end

  def toggle_completed!
    toggle_completed
    save!
  end
end
