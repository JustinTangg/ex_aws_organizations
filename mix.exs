defmodule ExAws.Organizations.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_aws_organizations,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 0.9.1", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 0.5", only: [:dev], runtime: false},
      {:hackney, ">= 0.0.0", only: [:dev, :test]},
      {:poison, ">= 0.0.0", only: [:dev, :test]},
      {:jason, "~> 1.1", optional: true},
      {:ex_aws, "~> 2.1.1"}
    ]
  end
end
