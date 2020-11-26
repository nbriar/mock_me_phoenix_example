defmodule MockMePhoenixExample.Services.StarWarsTest do
  use ExUnit.Case
  alias MockMePhoenixExample.Services.StarWars

  # setup_all %{} do
  #   # re-initializes the test case state
  #   MockMe.reset_test_cases()
  # end

  test "people/1 returns success" do
    MockMe.set_test_case(:swapi_people, :success)
    assert {:ok, _} = StarWars.people(1)
  end

  test "people/1 returns not found" do
    MockMe.set_test_case(:swapi_people, :not_found)
    assert {:not_found, _} = StarWars.people(1)
  end
end
