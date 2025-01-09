defmodule SchemaPrefixes.Repo do
  use Ecto.Repo,
    otp_app: :schema_prefixes,
    adapter: Ecto.Adapters.Postgres

  @impl true
  @doc """
  This callback is invoked as the entry point for all repository operations.
  This can be used to provide default values per operation.
  """
  def default_options(_options) do
    tenant = get_tenant()
    if tenant, do: [prefix: tenant]
  end

  @tenant_key :tenant
  def set_tenant(tenant) do
    Process.put(@tenant_key, tenant)
  end

  def get_tenant() do
    Process.get(@tenant_key)
  end
end
