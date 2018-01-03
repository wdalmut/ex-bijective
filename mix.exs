defmodule Bijective.Mixfile do
  use Mix.Project

  def project do
    [
      app: :bijective,
      version: "0.0.1",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      licenses: ["MIT"],
      maintainers: ["Walter Dal Mut <walter.dalmut@gmail.com>"],
      source_url: "https://github.com/wdalmut/ex-bijective",
      homepage_url: "https://github.com/wdalmut/ex-bijective"
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
      {:ex_doc, "~> 0.16", only: :dev, runtime: false}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end
