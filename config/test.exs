use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :mock_me_phoenix_example, MockMePhoenixExampleWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

config :mock_me_phoenix_example, swapi_url: "http://localhost:9081/swapi"

# Define your mocked Routes here
config :mock_me,
  routes: [
    %{
      name: :swapi_people,
      path: "/swapi/people/:id",
      responses: [
        %{
          flag: :success,
          # module: SomeMockModule,
          # function: :my_mock_function,
          # args: :success
          body:
            "{\"name\":\"Luke Skywalker\",\"height\":\"172\",\"mass\":\"77\",\"hair_color\":\"blond\",\"skin_color\":\"fair\",\"eye_color\":\"blue\",\"birth_year\":\"19BBY\",\"gender\":\"male\",\"homeworld\":\"http://swapi.dev/api/planets/1/\",\"films\":[\"http://swapi.dev/api/films/1/\",\"http://swapi.dev/api/films/2/\",\"http://swapi.dev/api/films/3/\",\"http://swapi.dev/api/films/6/\"],\"species\":[],\"vehicles\":[\"http://swapi.dev/api/vehicles/14/\",\"http://swapi.dev/api/vehicles/30/\"],\"starships\":[\"http://swapi.dev/api/starships/12/\",\"http://swapi.dev/api/starships/22/\"],\"created\":\"2014-12-09T13:50:51.644000Z\",\"edited\":\"2014-12-20T21:17:56.891000Z\",\"url\":\"http://swapi.dev/api/people/1/\"}"
        },
        %{
          flag: :not_found,
          body: "not-found",
          status_code: 404
        }
      ]
    }
  ]
