module TodosHelper
  def completed_message(todo)
    todo.completed ? "Done" : "Not yet"
  end
end
