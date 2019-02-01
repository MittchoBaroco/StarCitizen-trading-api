require 'test_helper'

class GoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @good = goods(:one)
  end

  test "should get index" do
    get goods_url, as: :json
    assert_response :success
  end

  test "should create good" do
    assert_difference('Good.count') do
      post goods_url, params: { good: { good_type: @good.good_type, name,: @good.name, } }, as: :json
    end

    assert_response 201
  end

  test "should show good" do
    get good_url(@good), as: :json
    assert_response :success
  end

  test "should update good" do
    patch good_url(@good), params: { good: { good_type: @good.good_type, name,: @good.name, } }, as: :json
    assert_response 200
  end

  test "should destroy good" do
    assert_difference('Good.count', -1) do
      delete good_url(@good), as: :json
    end

    assert_response 204
  end
end
