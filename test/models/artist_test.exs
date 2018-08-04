defmodule Poster.ArtistTest do
  use Poster.ModelCase

  alias Poster.Artist

  @valid_attrs %{band: "some band", name: "some name", photo: "some photo"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Artist.changeset(%Artist{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Artist.changeset(%Artist{}, @invalid_attrs)
    refute changeset.valid?
  end
end
