defmodule Poster.Repo.Migrations.CreateArtist do
  use Ecto.Migration

  def change do
    create table(:artists) do
      add :name, :string
      add :photo, :string
      add :band, :string

      timestamps()
    end
  end
end
