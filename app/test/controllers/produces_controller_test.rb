require "test_helper"

class ProducesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @produce = produces(:one)
  end

  test "should get index" do
    get produces_url
    assert_response :success
  end

  test "should get new" do
    get new_produce_url
    assert_response :success
  end

  test "should create produce" do
    assert_difference('Produce.count') do
      post produces_url, params: { produce: { available: @produce.available, description: @produce.description, headline: @produce.headline, image_url: @produce.image_url, name: @produce.name, points: @produce.points, price: @produce.price, slug: @produce.slug, thumb: @produce.thumb } }
    end

    assert_redirected_to produce_url(Produce.last)
  end

  test "should show produce" do
    get produce_url(@produce)
    assert_response :success
  end

  test "should get edit" do
    get edit_produce_url(@produce)
    assert_response :success
  end

  test "should update produce" do
    patch produce_url(@produce), params: { produce: { available: @produce.available, description: @produce.description, headline: @produce.headline, image_url: @produce.image_url, name: @produce.name, points: @produce.points, price: @produce.price, slug: @produce.slug, thumb: @produce.thumb } }
    assert_redirected_to produce_url(@produce)
  end

  test "should destroy produce" do
    assert_difference('Produce.count', -1) do
      delete produce_url(@produce)
    end

    assert_redirected_to produces_url
  end
end
