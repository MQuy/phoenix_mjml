defmodule PhoenixMjml.Mixfile do
  use Mix.Project

  def project do
    [app: :phoenix_mjml,
     version: "0.1.0",
     elixir: "~> 1.2",
     deps: deps(),
     package: [
       maintainers: ["MQuy"],
       licenses: ["MIT"],
       links: %{github: "https://github.com/MQuy/phoenix_mjml"}
     ],
     description: """
     Phoenix Template Engine for Mjml
     """]
  end

  def application do
    [applications: [:phoenix, :uuid]]
  end

  defp deps do
    [{:phoenix, "~> 1.2"},
     {:phoenix_html, "~> 2.3"},
     {:uuid, "~> 1.1"}]
  end
end
