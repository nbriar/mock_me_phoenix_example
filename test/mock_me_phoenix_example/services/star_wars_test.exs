defmodule MockMePhoenixExample.Services.StarWarsTest do
  use ExUnit.Case
  alias MockMePhoenixExample.Services.StarWars

  # setup_all %{} do
  #   # re-initializes the test case state
  #   MockMe.reset_flags()
  # end

  test "people/1 returns success" do
    MockMe.set_flag(:swapi_people, :success)
    assert {:ok, _} = StarWars.people(1)
  end

  test "people/1 returns not found" do
    MockMe.set_flag(:swapi_people, :not_found)
    assert {:not_found, _} = StarWars.people(1)
  end

  test "starships/1 returns success" do
    MockMe.set_flag(:swapi_starships, :success)
    assert {:ok, _} = StarWars.starships(1)
  end

  test "starships/1 returns not found" do
    MockMe.set_flag(:swapi_starships, :not_found)
    assert {:not_found, _} = StarWars.starships(1)
  end
end
