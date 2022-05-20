require "test_helper"

class AlbunsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @albun = albuns(:one)
  end

  test "should get index" do
    get albuns_url
    assert_response :success
  end

  test "should get new" do
    get new_albun_url
    assert_response :success
  end

  test "should create albun" do
    assert_difference("Albun.count") do
      post albuns_url, params: { albun: { AlbumName: @albun.AlbumName, artist: @albun.artist, year: @albun.year } }
    end

    assert_redirected_to albun_url(Albun.last)
  end

  test "should show albun" do
    get albun_url(@albun)
    assert_response :success
  end

  test "should get edit" do
    get edit_albun_url(@albun)
    assert_response :success
  end

  test "should update albun" do
    patch albun_url(@albun), params: { albun: { AlbumName: @albun.AlbumName, artist: @albun.artist, year: @albun.year } }
    assert_redirected_to albun_url(@albun)
  end

  test "should destroy albun" do
    assert_difference("Albun.count", -1) do
      delete albun_url(@albun)
    end

    assert_redirected_to albuns_url
  end
end
