defmodule Wat do
  def main(_) do
    "WAT" |> lower() |> IO.puts()
  end

  def lower(<<h, t::binary>>) when is_integer(h) and h in ?A..?Z,
    do: <<(h + 32)::binary-size(8), t::binary >>
end
