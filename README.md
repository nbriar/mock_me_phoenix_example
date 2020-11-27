# MockMePhoenixExample

An Example of how to use the `MockMe` package in your tests.

## File Examples

_config/test.exs_

```
config :mock_me_phoenix_example, swapi_url: "http://localhost:9081/swapi"
```

_test/test_helpers.ex_

```
ExUnit.start()
MockMe.start()

routes = [
  %MockMe.Route{
    name: :swapi_people,
    path: "/swapi/people/:id",
    responses: [
      %MockMe.Response{
        flag: :success,
        body: MockMePhoenixExample.Test.Mocks.SWAPI.people(:success)
      },
      %MockMe.Response{flag: :not_found, body: "people-failure", status_code: 404}
    ]
  },
  %MockMe.Route{
    name: :swapi_starships,
    path: "/swapi/starships/:id",
    responses: [
      %MockMe.Response{
        flag: :success,
        body: MockMePhoenixExample.Test.Mocks.SWAPI.starships(:success)
      },
      %MockMe.Response{flag: :not_found, body: "starships-failure", status_code: 404}
    ]
  }
]

MockMe.add_routes(routes)
MockMe.start_server()
```

Use `MockMe` in your tests.

_test/myapp/services/starwars.ex_

```
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

  test "starships/1 returns success" do
    MockMe.set_test_case(:swapi_starships, :success)
    assert {:ok, _} = StarWars.starships(1)
  end

  test "starships/1 returns not found" do
    MockMe.set_test_case(:swapi_starships, :not_found)
    assert {:not_found, _} = StarWars.starships(1)
  end
end
```
