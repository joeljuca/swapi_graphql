defmodule SwapiGraphqlWeb.Schema.Query.VehiclesTest do
  use SwapiGraphqlWeb.ConnCase, async: true

  @query """
  {
    vehicles {
      id,
      name
    } 
  }
  """

  test "vehicles field returns a list of Star Wars vehicles" do
    conn = build_conn()
    conn = get conn, "/api", query: @query
    assert json_response(conn, 200) == %{
      "data" => %{
        "vehicles" => [
          %{ "id" => "4", "name" => "Sand Crawler" },
          %{ "id" => "6", "name" => "T-16 skyhopper" },
          %{ "id" => "7", "name" => "X-34 landspeeder" },
          %{ "id" => "8", "name" => "TIE/LN starfighter" },
          %{ "id" => "14", "name" => "Snowspeeder" },
          %{ "id" => "16", "name" => "TIE bomber" },
          %{ "id" => "18", "name" => "AT-AT" },
          %{ "id" => "19", "name" => "AT-ST" },
          %{ "id" => "20", "name" => "Storm IV Twin-Pod cloud car" },
          %{ "id" => "24", "name" => "Sail barge" }
        ]
      }
    }
  end
end