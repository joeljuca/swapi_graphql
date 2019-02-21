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
end