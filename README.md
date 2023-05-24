# Repro

elixir --version
Erlang/OTP 26 [erts-14.0] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:1] [jit:ns] [dtrace] [sharing-preserving]

Elixir 1.15.0-rc.0 (compiled with Erlang/OTP 24)

```
$ mix escript.build
Compiling 1 file (.ex)
Sub pass ssa_opt_ranges
Function: lower/1

== Compilation error in file lib/wat.ex ==
** (CompileError) lib/wat.ex: internal error in pass beam_ssa_opt:
exception error: undefined function beam_bounds:'+'/2
  in function  beam_call_types:arith_type/2 (beam_call_types.erl, line 895)
  in call from beam_ssa_type:ranges_propagate_types/2 (beam_ssa_type.erl, line 861)
  in call from beam_ssa_type:ranges_is/3 (beam_ssa_type.erl, line 837)
  in call from beam_ssa_type:ranges/3 (beam_ssa_type.erl, line 824)
  in call from beam_ssa_opt:ssa_opt_ranges/1 (beam_ssa_opt.erl, line 448)
  in call from compile:run_sub_passes_1/3 (compile.erl, line 419)
  in call from beam_ssa_opt:phase/4 (beam_ssa_opt.erl, line 114)
    (stdlib 5.0) lists.erl:1686: :lists.foreach_1/2
```

```
> erl
Erlang/OTP 26 [erts-14.0] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:1] [jit:ns] [dtrace] [sharing-preserving]

Eshell V14.0 (press Ctrl+G to abort, type help(). for help)
1> c(wat).
{ok,wat}
2> wat:lower( << "F00" >>).
<<"f00">>
```
