require 'test_helper'

class TodoTest < ActiveSupport::TestCase

  setup do
    @breakfast = todos(:breakfast)
    @tidy_up = todos(:tidy_up)
  end

  test "should reverse the completed state" do
    @breakfast.toggle_completed
    assert_equal(true, @breakfast.completed)
  end

  test "should save the state" do
    @breakfast.toggle_completed!
    assert_equal(false, @breakfast.changed?)
  end
end
