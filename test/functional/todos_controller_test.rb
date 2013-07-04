require 'test_helper'

class TodosControllerTest < ActionController::TestCase
  setup do
    @breakfast = todos(:breakfast)
    @tidy_up = todos(:tidy_up)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:todos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create todo" do
    assert_difference('Todo.count') do
      post :create, todo: { title: @breakfast.title }
    end

    assert_redirected_to todos_path
  end

  test "should show todo" do
    get :show, id: @breakfast
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @breakfast
    assert_response :success
  end

  test "should update todo" do
    put :update, id: @breakfast, todo: { title: @breakfast.title }
    assert_redirected_to todos_path
  end

  test "should destroy todo" do
    assert_difference('Todo.count', -1) do
      delete :destroy, id: @breakfast
    end

    assert_redirected_to todos_path
  end

  test "should redirect to the index page" do
    put :toggle_complete, id: @breakfast
    assert_redirected_to todos_path
  end
end
