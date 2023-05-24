defmodule Wat.MixProject do
  use Mix.Project

  def project do
    [
      app: :wat,
      version: "0.0.0",
      escript: [main_module: Wat]
    ]
  end
end
