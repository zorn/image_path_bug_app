defmodule ImagePathBugApp.Repo do
  use Ecto.Repo,
    otp_app: :image_path_bug_app,
    adapter: Ecto.Adapters.Postgres
end
