require 'test_helper'

class ClidesControllerTest < ActionController::TestCase
  setup do
    @clide = clides(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clides)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clide" do
    assert_difference('Clide.count') do
      post :create, clide: { colaboration: @clide.colaboration, community: @clide.community, floss: @clide.floss, hosted: @clide.hosted, memory_hi: @clide.memory_hi, memory_lo: @clide.memory_lo, name: @clide.name, private: @clide.private, source: @clide.source, space_hi: @clide.space_hi, space_lo: @clide.space_lo, ssh: @clide.ssh, ssl: @clide.ssl, sudo: @clide.sudo, url: @clide.url }
    end

    assert_redirected_to clide_path(assigns(:clide))
  end

  test "should show clide" do
    get :show, id: @clide
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clide
    assert_response :success
  end

  test "should update clide" do
    put :update, id: @clide, clide: { colaboration: @clide.colaboration, community: @clide.community, floss: @clide.floss, hosted: @clide.hosted, memory_hi: @clide.memory_hi, memory_lo: @clide.memory_lo, name: @clide.name, private: @clide.private, source: @clide.source, space_hi: @clide.space_hi, space_lo: @clide.space_lo, ssh: @clide.ssh, ssl: @clide.ssl, sudo: @clide.sudo, url: @clide.url }
    assert_redirected_to clide_path(assigns(:clide))
  end

  test "should destroy clide" do
    assert_difference('Clide.count', -1) do
      delete :destroy, id: @clide
    end

    assert_redirected_to clides_path
  end
end
