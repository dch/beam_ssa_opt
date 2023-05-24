defmodule Wat do
  def main(_) do
    "WAT" |> downcase() |> IO.puts()
  end

  def downcase(bin), do: downcase(bin, << >>)

  def downcase(<<h, t::binary>>, acc) when h in ?A..?Z,
    do: downcase(t, <<acc::binary, h + 32>>)

  def downcase(<<h, t::binary>>, acc), do: downcase(t, <<acc::binary, h>>)
  def downcase(<<>>, acc), do: acc

end
