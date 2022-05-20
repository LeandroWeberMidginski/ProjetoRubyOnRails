require "application_system_test_case"

class AlbunsTest < ApplicationSystemTestCase
  setup do
    @albun = albuns(:one)
  end

  test "visiting the index" do
    visit albuns_url
    assert_selector "h1", text: "Albuns"
  end

  test "should create albun" do
    visit albuns_url
    click_on "New albun"

    fill_in "Albumname", with: @albun.AlbumName
    fill_in "Artist", with: @albun.artist
    fill_in "Year", with: @albun.year
    click_on "Create Albun"

    assert_text "Albun was successfully created"
    click_on "Back"
  end

  test "should update Albun" do
    visit albun_url(@albun)
    click_on "Edit this albun", match: :first

    fill_in "Albumname", with: @albun.AlbumName
    fill_in "Artist", with: @albun.artist
    fill_in "Year", with: @albun.year
    click_on "Update Albun"

    assert_text "Albun was successfully updated"
    click_on "Back"
  end

  test "should destroy Albun" do
    visit albun_url(@albun)
    click_on "Destroy this albun", match: :first

    assert_text "Albun was successfully destroyed"
  end
end
