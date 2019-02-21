defmodule SwapiGraphqlWeb.Schema do
  use Absinthe.Schema

  query do
    field :films,     list_of(:film)
    field :people,    list_of(:person)
    field :planets,   list_of(:planet)
    field :species,   list_of(:specie)
    field :starships, list_of(:starship)
    field :vehicles,  list_of(:vehicle)
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