defmodule SwapiGraphql.Schema do
  use Absinthe.Schema

  query do
    # fields
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