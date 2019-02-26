defmodule SwapiGraphqlWeb.Schema.Query.FilmsTest do
  use SwapiGraphqlWeb.ConnCase, async: true

  @query """
  {
    films {
      id,
      title
    }
  }
  """

  test "films field returns a list of Star Wars films" do
    conn = build_conn()
    conn = get conn, "/api", query: @query
    assert json_response(conn, 200) == %{
      "data" => %{
        "films" => [
          %{ "id" => "1", "title" => "A New Hope" },
          %{ "id" => "5", "title" => "Attack of the Clones" },
          %{ "id" => "4", "title" => "The Phantom Menace" },
          %{ "id" => "6", "title" => "Revenge of the Sith" },
          %{ "id" => "3", "title" => "Return of the Jedi" },
          %{ "id" => "2", "title" => "The Empire Strikes Back" },
          %{ "id" => "7", "title" => "The Force Awakens" }
        ]
      }
    }
  end
end