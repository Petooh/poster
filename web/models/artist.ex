defmodule Poster.Artist do
  use Poster.Web, :model

  schema "artists" do
    field :name, :string
    field :photo, :string
    field :band, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :photo, :band])
    |> validate_required([:name, :photo, :band])
  end
end
