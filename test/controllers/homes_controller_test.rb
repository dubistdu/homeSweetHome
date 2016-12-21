require 'test_helper'

class HomesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @home = homes(:one)
  end

  test "should get index" do
    get homes_url
    assert_response :success
  end

  test "should get new" do
    get new_home_url
    assert_response :success
  end

  test "should create home" do
    assert_difference('Home.count') do
      post homes_url, params: { home: { address: @home.address, agent_id: @home.agent_id, description: @home.description, image: @home.image, images_id: @home.images_id, number_of_bathrooms: @home.number_of_bathrooms, number_of_bedrooms: @home.number_of_bedrooms, parking_garage: @home.parking_garage, parking_garage_size: @home.parking_garage_size, parking_garage_type: @home.parking_garage_type, price: @home.price, square_foot: @home.square_foot, swimming_pool: @home.swimming_pool } }
    end

    assert_redirected_to home_url(Home.last)
  end

  test "should show home" do
    get home_url(@home)
    assert_response :success
  end

  test "should get edit" do
    get edit_home_url(@home)
    assert_response :success
  end

  test "should update home" do
    patch home_url(@home), params: { home: { address: @home.address, agent_id: @home.agent_id, description: @home.description, image: @home.image, images_id: @home.images_id, number_of_bathrooms: @home.number_of_bathrooms, number_of_bedrooms: @home.number_of_bedrooms, parking_garage: @home.parking_garage, parking_garage_size: @home.parking_garage_size, parking_garage_type: @home.parking_garage_type, price: @home.price, square_foot: @home.square_foot, swimming_pool: @home.swimming_pool } }
    assert_redirected_to home_url(@home)
  end

  test "should destroy home" do
    assert_difference('Home.count', -1) do
      delete home_url(@home)
    end

    assert_redirected_to homes_url
  end
end
