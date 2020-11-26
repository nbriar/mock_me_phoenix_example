defmodule MockMePhoenixExample.Services.StarWars do
  use HTTPoison.Base

  def base_url do
    Application.get_env(:mock_me_phoenix_example, :swapi_url)
  end

  def process_url(url) do
    base_url() <> url
  end

  def people(id) do
    case get("/people/#{id}/") do
      {:ok, %HTTPoison.Response{status_code: 200, body: response_body}} ->
        {:ok, Jason.decode!(response_body)}

      {:ok, %HTTPoison.Response{status_code: 404}} ->
        {:not_found, "The person with id #{id} was not found"}

      {:ok, %HTTPoison.Response{status_code: status_code}} ->
        {:error, "Failed with status code: #{status_code}"}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, "Failed with reason: #{reason}"}
    end
  end
end
