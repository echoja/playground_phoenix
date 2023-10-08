defmodule PlaygroundPhoenix.Repo do
  use Ecto.Repo,
    otp_app: :playground_phoenix,
    adapter: Ecto.Adapters.Postgres
end
