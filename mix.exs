defmodule MySystem.MixProject do
  use Mix.Project

  def project do
    [
      app: :my_system,
      version: "0.1.0",
      elixir: "~> 1.12",
      compilers: [:boundary, :phoenix] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      aliases: [],
      deps: deps(),
      boundary: [
        default: [
          check: [
            apps: [:phoenix, :ecto, {:mix, :runtime}]
          ]
        ]
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:phoenix, "~> 1.6"},
      {:phoenix_ecto, "~> 4.4"},
      {:jason, "~> 1.2"},
      {:boundary, "~> 0.8", runtime: false}
    ]
  end
end
