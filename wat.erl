-module(wat).
-export([lower/1]).

lower(<<Char:8, Rest/binary>>) when Char >= $A, Char =< $Z ->
    <<(Char+32):8, Rest/binary>>.

