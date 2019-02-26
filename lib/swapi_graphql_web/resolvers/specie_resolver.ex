defmodule SwapiGraphqlWeb.SpecieResolver do
  import BaseResolver

  def resolve(_, %{:q => q}, _), do: {:ok, find([q: q])}

  def resolve(_, _, _), do: {:ok, all()}

  def all do
    HTTPoison.get!("#{base_url()}/species/")
    |> parse_swapi_payload()
  end

  def get(id) do
    HTTPoison.get!("#{base_url()}/species/#{id}/")
    |> parse_swapi_payload()
  end

  def find([q: q]) do
    HTTPoison.get!("#{base_url()}/species/?search=#{q}")
    |> parse_swapi_payload()
  end

  def find(_), do: all()
end