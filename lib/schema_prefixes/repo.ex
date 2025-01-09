defmodule SchemaPrefixes.Repo do
  use Ecto.Repo,
    otp_app: :schema_prefixes,
    adapter: Ecto.Adapters.Postgres
end
