defmodule SchemaPrefixes.UsersContext do
  import Ecto.Query

  alias SchemaPrefixes.Repo
  alias SchemaPrefixes.User

  def list_users(tenant) do
    Repo.all(User, prefix: tenant)
  end

  def get_user!(tenant, id) do
    Repo.get!(User, id, prefix: tenant)
  end

  def create_user(tenant, attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert(prefix: tenant)
  end
end
