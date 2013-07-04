class Todo < ActiveRecord::Base
  attr_accessible :title

  validates :title, presence: true
  validates :order, numericality: {greater_than_or_equal_to: 0}, presence: true, uniqueness: true

  def toggle_completed
    self.completed = !completed
  end

  def toggle_completed!
    toggle_completed
    save!
  end

  def self.create_and_initialise(params={})
    todo = new(params)
    todo.order = Todo.maximum("order") + 1
    todo.completed = false
    todo
  end


  def self.completed
    where(completed: true)
  end

  def self.active
    where(completed: false)
  end
end
