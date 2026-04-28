# Package

version       = "0.1.0"
author        = "litlighilit"
description   = "sys.stdin, stdout, stderr of Python"
license       = "MIT"
srcDir        = "src"


# Dependencies

requires "nim > 2.0.8"


var pylibPre = "https://github.com/nimpylib"
let envVal = getEnv("NIMPYLIB_PKGS_BARE_PREFIX")
if envVal != "": pylibPre = ""
#if pylibPre == Def: pylibPre = ""
elif pylibPre[^1] != '/':
  pylibPre.add '/'
template pylib(x, ver) =
  requires if pylibPre == "": x & ver
           else: pylibPre & x

pylib "pyio_open", " ^= 0.1.0"


