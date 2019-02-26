defmodule SwapiGraphqlWeb.Schema.Query.PlanetsTest do
  use SwapiGraphqlWeb.ConnCase, async: true

  @query """
  {
    planets {
      id,
      name
    }
  }
  """

  test "planets field returns a list of Star Wars planets" do
    conn = build_conn()
    conn = get conn, "/api", query: @query
    assert json_response(conn, 200) == %{
      "data" => %{
        "planets" => [
          %{ "id" =>  "2", "name" => "Alderaan" },
          %{ "id" =>  "3", "name" => "Yavin IV" },
          %{ "id" =>  "4", "name" => "Hoth" },
          %{ "id" =>  "5", "name" => "Dagobah" },
          %{ "id" =>  "6", "name" => "Bespin" },
          %{ "id" =>  "7", "name" => "Endor" },
          %{ "id" =>  "8", "name" => "Naboo" },
          %{ "id" =>  "9", "name" => "Coruscant" },
          %{ "id" =>  "10", "name" => "Kamino" },
          %{ "id" =>  "11", "name" => "Geonosis" }
        ]
      }
    }
  end
end