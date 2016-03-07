defmodule Swapi.Mixfile do
  use Mix.Project

  def project do
    [app: :swapi,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: "An Elixir wrapper for the Star Wars API.",
     package: package,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:httpoison]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:httpoison, "~> 0.8.0"}
    ]
  end

  defp package do
    [files: ["lib", "config", "mix.exs", "README*"],
     maintainers: ["Tim Whitacre"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/twhitacre/swapi.ex",
              "Docs"   => "https://hexdocs.pm/swapi/readme.html"}]
  end

end
