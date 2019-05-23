defmodule ConduitMessagePack.MixProject do
  use Mix.Project

  def project do
    [
      app: :conduit_message_pack,
      version: "0.1.0",
      elixir: "~> 1.6",
      licenses: ["MIT"],
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Docs
      name: "ConduitMessagePack",
      source_url: "https://github.com/conduitframework/conduit_message_pack",
      homepage_url: "https://hexdocs.pm/conduit_message_pack",
      docs: docs(),
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
      {:conduit, "~> 0.8"},
      {:msgpax, "~> 2.0"},
      {:ex_doc, "~> 0.20.2", only: :dev}
    ]
  end

  defp docs do
    [main: "readme", project: "ConduitMessagePack", extras: ["README.md"]]
  end
end
