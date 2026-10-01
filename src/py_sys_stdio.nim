
const weirdTarget = defined(nimscript)  # js is supported
when not weirdTarget:
  # CPython's stdio is init-ed by create_stdio in Python/pylifecycle.c
  import pkg/pyio_open as io
  export io.read, io.readline, io.write, io.fileno, io.isatty, io.flush
  export io.stdin, io.stdout, io.stderr

  let
    dunder_stdin*  = io.stdin  ## __stdin__
    dunder_stdout* = io.stdout ## __stdout__
    dunder_stderr* = io.stderr ## __stderr__

