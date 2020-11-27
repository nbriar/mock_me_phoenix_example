defmodule MockMePhoenixExample.Test.Mocks.SWAPI do
  def people(:success) do
    "{\"name\":\"Luke Skywalker\",\"height\":\"172\",\"mass\":\"77\",\"hair_color\":\"blond\",\"skin_color\":\"fair\",\"eye_color\":\"blue\",\"birth_year\":\"19BBY\",\"gender\":\"male\",\"homeworld\":\"http://swapi.dev/api/planets/1/\",\"films\":[\"http://swapi.dev/api/films/1/\",\"http://swapi.dev/api/films/2/\",\"http://swapi.dev/api/films/3/\",\"http://swapi.dev/api/films/6/\"],\"species\":[],\"vehicles\":[\"http://swapi.dev/api/vehicles/14/\",\"http://swapi.dev/api/vehicles/30/\"],\"starships\":[\"http://swapi.dev/api/starships/12/\",\"http://swapi.dev/api/starships/22/\"],\"created\":\"2014-12-09T13:50:51.644000Z\",\"edited\":\"2014-12-20T21:17:56.891000Z\",\"url\":\"http://swapi.dev/api/people/1/\"}"
  end

  def starships(:success) do
    "{\"name\":\"Death Star\",\"model\":\"DS-1 Orbital Battle Station\",\"manufacturer\":\"Imperial Department of Military Research, Sienar Fleet Systems\",\"cost_in_credits\":\"1000000000000\",\"length\":\"120000\",\"max_atmosphering_speed\":\"n/a\",\"crew\":\"342,953\",\"passengers\":\"843,342\",\"cargo_capacity\":\"1000000000000\",\"consumables\":\"3 years\",\"hyperdrive_rating\":\"4.0\",\"MGLT\":\"10\",\"starship_class\":\"Deep Space Mobile Battlestation\",\"pilots\":[],\"films\":[\"http://swapi.dev/api/films/1/\"],\"created\":\"2014-12-10T16:36:50.509000Z\",\"edited\":\"2014-12-20T21:26:24.783000Z\",\"url\":\"http://swapi.dev/api/starships/9/\"}"
  end
end
