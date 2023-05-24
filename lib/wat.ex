defmodule Wat do
  def main(_) do
    "WAT" |> lower() |> IO.puts()
  end

  def lower(<<h, t::binary>>) when h in ?A..?Z,
    do: <<(h + 32)::binary-size(8), t::binary >>
end
