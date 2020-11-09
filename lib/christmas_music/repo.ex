defmodule ChristmasMusic.Repo do
  use Ecto.Repo,
    otp_app: :christmas_music,
    adapter: Ecto.Adapters.Postgres
end
