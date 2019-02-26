defmodule SwapiGraphqlWeb.Schema.Query.StarshipsTest do
  use SwapiGraphqlWeb.ConnCase, async: true

  @query """
  {
    starships {
      id,
      name
    } 
  }
  """

  test "starships field returns a list of Star Wars starships" do
    conn = build_conn()
    conn = get conn, "/api", query: @query
    assert json_response(conn, 200) == %{
      "data" => %{
        "starships" => [
          %{ "id" => "15", "name" => "Executor" },
          %{ "id" => "5", "name" => "Sentinel-class landing craft" },
          %{ "id" => "9", "name" => "Death Star" },
          %{ "id" => "10", "name" => "Millennium Falcon" },
          %{ "id" => "11", "name" => "Y-wing" },
          %{ "id" => "12", "name" => "X-wing" },
          %{ "id" => "13", "name" => "TIE Advanced x1" },
          %{ "id" => "21", "name" => "Slave 1" },
          %{ "id" => "22", "name" => "Imperial shuttle" },
          %{ "id" => "23", "name" => "EF76 Nebulon-B escort frigate" }
        ]
      }
    }
  end
end