defmodule SwapiGraphqlWeb.Schema do
  use Absinthe.Schema
  alias SwapiGraphqlWeb.FilmResolver
  alias SwapiGraphqlWeb.PersonResolver
  alias SwapiGraphqlWeb.PlanetResolver
  alias SwapiGraphqlWeb.SpecieResolver
  alias SwapiGraphqlWeb.StarshipResolver
  alias SwapiGraphqlWeb.VehicleResolver

  query do
    field :films,     list_of(:film) do
      resolve(&FilmResolver.resolve/3)
    end
    field :people,    list_of(:person) do
      resolve(&PersonResolver.resolve/3)
    end
    field :planets,   list_of(:planet) do
      resolve(&PlanetResolver.resolve/3)
    end
    field :species,   list_of(:specie) do
      resolve(&SpecieResolver.resolve/3)
    end
    field :starships, list_of(:starship) do
      resolve(&StarshipResolver.resolve/3)
    end
    field :vehicles,  list_of(:vehicle) do
      resolve(&VehicleResolver.resolve/3)
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