# Multi-tenancy with schema prefixes in Ecto

In relational databases such as PostgreSQL, schema prefixes allow you to logically group database objects (such as tables) under different namespaces. It might be useful in multi-tenant applications, where each tenant needs isolated data - and thanks to the schema prefixes, we can achieve isolation while still using a single database!

To start your Phoenix server:

- Run `mix setup` to install and setup dependencies
- Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

- Official website: https://www.phoenixframework.org/
- Guides: https://hexdocs.pm/phoenix/overview.html
- Docs: https://hexdocs.pm/phoenix
- Forum: https://elixirforum.com/c/phoenix-forum
- Source: https://github.com/phoenixframework/phoenix
