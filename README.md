# Inmana

To start your Phoenix server:

- Create new projects with `mix phx.new project_name --no-html --no-webpack`
- Install dependencies with `mix deps.get`
- Create and migrate your database with `mix ecto.setup`
- Create a migration with `mix ecto.gen.migration migration_name`
- Apply migrations in database `mix ecto.migrate`
- Create Credo configuration with `mix credo.gen.config`
- Analyse project with `mix credo` or `mix credo --strict`
- Compile project with `mix compile`
- Start Phoenix endpoint with `mix phx.server`
- Compile Phoenix project with `mix compile`
- Run tests with `mix test`

Some notes:

- Run `iex` to enter the elixir interactive mode;
- On the interactive mode, type `h` followed by the module and function name to see it's documentation. Ex: `h String.upcase`;
- Files ended with `.ex` are elixir files and ended with `.exs` are elixir script files (usally config files).

Syntax notes:

- Pipe Operator ( |> ): used to "connect" functions calls, passing the result of a function to another. Ex:
  ```elixir
  name = params["name"]
  |> String.trim()
  |> String.downcase()
  ```

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

- Official website: https://www.phoenixframework.org/
- Guides: https://hexdocs.pm/phoenix/overview.html
- Docs: https://hexdocs.pm/phoenix
- Forum: https://elixirforum.com/c/phoenix-forum
- Source: https://github.com/phoenixframework/phoenix
