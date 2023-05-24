-module(wat).
-export([lower/1]).
-compile(debug_info).

lower(<<Char/integer, Rest/binary>>)
    when erlang:is_integer(Char) andalso
             Char >= 65 andalso Char =< 90 ->
    <<(Char + 32):8/binary, Rest/binary>>.
