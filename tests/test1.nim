
import std/unittest

import py_sys_stdio as sys
test "declared":
  check compiles sys.stdin.read()

