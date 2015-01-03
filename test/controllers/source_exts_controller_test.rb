require 'test_helper'

class SourceExtsControllerTest < ActionController::TestCase
  setup do
    @source_ext = source_exts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:source_exts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create source_ext" do
    assert_difference('SourceExt.count') do
      post :create, source_ext: { source_ext: @source_ext.source_ext, source_ext_id_pk: @source_ext.source_ext_id_pk }
    end

    assert_redirected_to source_ext_path(assigns(:source_ext))
  end

  test "should show source_ext" do
    get :show, id: @source_ext
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @source_ext
    assert_response :success
  end

  test "should update source_ext" do
    patch :update, id: @source_ext, source_ext: { source_ext: @source_ext.source_ext, source_ext_id_pk: @source_ext.source_ext_id_pk }
    assert_redirected_to source_ext_path(assigns(:source_ext))
  end

  test "should destroy source_ext" do
    assert_difference('SourceExt.count', -1) do
      delete :destroy, id: @source_ext
    end

    assert_redirected_to source_exts_path
  end
end
