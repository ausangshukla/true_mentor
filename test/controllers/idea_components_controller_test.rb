require 'test_helper'

class IdeaComponentsControllerTest < ActionController::TestCase
  setup do
    @idea_component = idea_components(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:idea_components)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create idea_component" do
    assert_difference('IdeaComponent.count') do
      post :create, idea_component: { details: @idea_component.details, idea_component_type: @idea_component.idea_component_type, idea_id: @idea_component.idea_id, order: @idea_component.order, summary: @idea_component.summary, tags: @idea_component.tags }
    end

    assert_redirected_to idea_component_path(assigns(:idea_component))
  end

  test "should show idea_component" do
    get :show, id: @idea_component
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @idea_component
    assert_response :success
  end

  test "should update idea_component" do
    patch :update, id: @idea_component, idea_component: { details: @idea_component.details, idea_component_type: @idea_component.idea_component_type, idea_id: @idea_component.idea_id, order: @idea_component.order, summary: @idea_component.summary, tags: @idea_component.tags }
    assert_redirected_to idea_component_path(assigns(:idea_component))
  end

  test "should destroy idea_component" do
    assert_difference('IdeaComponent.count', -1) do
      delete :destroy, id: @idea_component
    end

    assert_redirected_to idea_components_path
  end
end
