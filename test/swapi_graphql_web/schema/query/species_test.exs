defmodule SwapiGraphqlWeb.Schema.Query.SpeciesTest do
  use SwapiGraphqlWeb.ConnCase, async: true

  @query """
  {
    species {
      id,
      name
    }
  }
  """

  test "species field returns a list of Star Wars species" do
    conn = build_conn()
    conn = get conn, "/api", query: @query
    assert json_response(conn, 200) == %{
      "data" => %{
        "species" => [
          %{ "id" => "5", "name" => "Hutt" },
          %{ "id" => "6", "name" => "Yoda's species" },
          %{ "id" => "7", "name" => "Trandoshan" },
          %{ "id" => "8", "name" => "Mon Calamari" },
          %{ "id" => "9", "name" => "Ewok" },
          %{ "id" => "10", "name" => "Sullustan" },
          %{ "id" => "11", "name" => "Neimodian" },
          %{ "id" => "12", "name" => "Gungan" },
          %{ "id" => "13", "name" => "Toydarian" },
          %{ "id" => "14", "name" => "Dug" }
        ]
      }
    }
  end
end