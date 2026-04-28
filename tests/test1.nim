
import std/unittest

import py_sys_stdio as sys
test "declared":
  when declared(sys.stdin):
    check compiles sys.stdin.read()
  else:
    skip()

