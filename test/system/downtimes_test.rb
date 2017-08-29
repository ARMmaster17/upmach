require "application_system_test_case"

class DowntimesTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit machine_downtimes_url
  
    assert_selector "h1", text: "Downtime"
  end
end
