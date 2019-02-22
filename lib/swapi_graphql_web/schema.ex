defmodule SwapiGraphqlWeb.Schema do
  use Absinthe.Schema

  query do
    field :films,     list_of(:film) do
      resolve fn _, _, _ -> {:ok, [ %{ :id => 1, :title => "Film 1" } ]} end
    end
    field :people,    list_of(:person) do
      resolve fn _, _, _ -> {:ok, [ %{ :id => 1, :name => "Person 1" } ]} end
    end
    field :planets,   list_of(:planet) do
      resolve fn _, _, _ -> {:ok, [ %{ :id => 1, :name => "Planet 1" } ]} end
    end
    field :species,   list_of(:specie) do
      resolve fn _, _, _ -> {:ok, [ %{ :id => 1, :name => "Specie 1" } ]} end
    end
    field :starships, list_of(:starship) do
      resolve fn _, _, _ -> {:ok, [ %{ :id => 1, :name => "Starship 1" } ]} end
    end
    field :vehicles,  list_of(:vehicle) do
      resolve fn _, _, _ -> {:ok, [ %{ :id => 1, :name => "Vehicle 1" } ]} end
    end
  end

  object :film do
    field :id, :id
    field :title, :string
  end

  object :person do
    field :id, :id
    field :name, :string
  end

  object :planet do
    field :id, :id
    field :name, :string
  end

  object :specie do
    field :id, :id
    field :name, :string
  end

  object :starship do
    field :id, :id
    field :name, :string
  end

  object :vehicle do
    field :id, :id
    field :name, :string
  end
end