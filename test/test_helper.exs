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
