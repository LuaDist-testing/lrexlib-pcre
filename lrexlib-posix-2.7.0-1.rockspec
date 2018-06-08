dependencies = {
  "lua >= 5.1",
}
external_dependencies = {
  POSIX = {
    header = "regex.h",
  },
}
description = {
  summary = "Regular expression library binding (POSIX flavour).",
  detailed = "      Lrexlib is a regular expression library for Lua 5.1, which\
      provides bindings for several regular expression libraries.\
      This rock provides the POSIX bindings.\
    ",
  homepage = "http://github.com/rrthomas/lrexlib",
  license = "MIT/X11",
}
package = "Lrexlib-POSIX"
source = {
  url = "https://github.com/downloads/rrthomas/lrexlib/lrexlib-2.7.0.zip",
  md5 = "9cc78294a2841a80fd6b4cb80914d186",
}
build = {
  modules = {
    rex_posix = {
      defines = {
        "VERSION=\"2.7.0\"",
      },
      sources = {
        "src/common.c",
        "src/posix/lposix.c",
      },
    },
  },
  type = "builtin",
}
version = "2.7.0-1"
