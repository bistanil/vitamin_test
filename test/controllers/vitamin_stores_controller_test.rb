require 'test_helper'

class VitaminStoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vitamin_store = vitamin_stores(:one)
  end

  test "should get index" do
    get vitamin_stores_url
    assert_response :success
  end

  test "should get new" do
    get new_vitamin_store_url
    assert_response :success
  end

  test "should create vitamin_store" do
    assert_difference('VitaminStore.count') do
      post vitamin_stores_url, params: { vitamin_store: { acti_vita_c: @vitamin_store.acti_vita_c, acti_vita_d3: @vitamin_store.acti_vita_d3, acti_vita_iron: @vitamin_store.acti_vita_iron, day: @vitamin_store.day, vita_c: @vitamin_store.vita_c, vita_d3: @vitamin_store.vita_d3, vita_iron: @vitamin_store.vita_iron } }
    end

    assert_redirected_to vitamin_store_url(VitaminStore.last)
  end

  test "should show vitamin_store" do
    get vitamin_store_url(@vitamin_store)
    assert_response :success
  end

  test "should get edit" do
    get edit_vitamin_store_url(@vitamin_store)
    assert_response :success
  end

  test "should update vitamin_store" do
    patch vitamin_store_url(@vitamin_store), params: { vitamin_store: { acti_vita_c: @vitamin_store.acti_vita_c, acti_vita_d3: @vitamin_store.acti_vita_d3, acti_vita_iron: @vitamin_store.acti_vita_iron, day: @vitamin_store.day, vita_c: @vitamin_store.vita_c, vita_d3: @vitamin_store.vita_d3, vita_iron: @vitamin_store.vita_iron } }
    assert_redirected_to vitamin_store_url(@vitamin_store)
  end

  test "should destroy vitamin_store" do
    assert_difference('VitaminStore.count', -1) do
      delete vitamin_store_url(@vitamin_store)
    end

    assert_redirected_to vitamin_stores_url
  end
end
