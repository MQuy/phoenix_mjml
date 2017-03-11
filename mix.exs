defmodule PhoenixMjml.Mixfile do
  use Mix.Project

  def project do
    [app: :phoenix_mjml,
     version: "0.0.2",
     elixir: "~> 1.4",
     deps: deps(),
     package: package(),
     description: description()]
  end

  def application do
    [applications: [:phoenix, :uuid]]
  end

  defp deps do
    [{:phoenix, "~> 1.3.0-rc"},
     {:phoenix_html, "~> 2.6"},
     {:uuid, "~> 1.1"},
     {:ex_doc, "~> 0.14", only: :dev, runtime: false}]
  end

  defp description do
    """
    Phoenix Template Engine for Mjml
    """
  end

  defp package do
    [name: :phoenix_mjml,
     maintainers: ["MQuy"],
     licenses: ["MIT"],
     links: %{github: "https://github.com/MQuy/phoenix_mjml"}]
  end
end
