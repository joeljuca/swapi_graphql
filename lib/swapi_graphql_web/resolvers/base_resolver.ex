defmodule BaseResolver do
  @base_url "https://swapi.co/api"
  def base_url, do: @base_url

  def parse_swapi_payload(%HTTPoison.Response{body: body}) do
    Jason.decode!(body)
    |> extract_items()
    |> valid_fields_only()
  end

  defp extract_items(%{ "results" => results }), do: results

  defp extract_items(map), do: map

  def valid_fields_only([]), do: []

  def valid_fields_only([head | tail]) do
    Enum.concat([valid_fields_only(head)], valid_fields_only(tail))
  end

  def valid_fields_only(%{
    "url" => id,
    "name" => name
  }) do
    %{ :id => id_from_url(id), :name => name }
  end

  def valid_fields_only(%{
    "url" => id,
    "title" => title
  }) do
    %{ :id => id_from_url(id), :title => title }
  end

  def id_from_url(url) do
    String.split(url, "/")
    |> Enum.filter(&(String.length(&1) !== 0))
    |> List.last()
  end
end