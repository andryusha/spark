require "application_system_test_case"

class ReplaceReloadTest < ApplicationSystemTestCase
  setup do
    Hotwire::Spark.html_reload_method = "replace"
  end

  test "reload HTML changes" do
    visit root_path
    assert_no_text "This is pretty amazing"

    edit_file "app/views/home/show.html.erb", replace: "cool", with: "amazing"

    assert_text "This is pretty amazing"
  end
end
