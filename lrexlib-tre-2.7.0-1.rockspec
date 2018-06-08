dependencies = {
  "lua >= 5.1",
}
external_dependencies = {
  TRE = {
    header = "tre/tre.h",
    library = "tre",
  },
}
description = {
  summary = "Regular expression library binding (TRE flavour).",
  detailed = "      Lrexlib is a regular expression library for Lua 5.1, which\
      provides bindings for several regular expression libraries.\
      This rock provides the TRE bindings.\
    ",
  homepage = "http://github.com/rrthomas/lrexlib",
  license = "MIT/X11",
}
package = "Lrexlib-TRE"
source = {
  url = "https://github.com/downloads/rrthomas/lrexlib/lrexlib-2.7.0.zip",
  md5 = "9cc78294a2841a80fd6b4cb80914d186",
}
build = {
  modules = {
    rex_tre = {
      defines = {
        "VERSION=\"2.7.0\"",
      },
      libdirs = {
        "$(TRE_LIBDIR)",
      },
      libraries = {
        "tre",
      },
      incdirs = {
        "$(TRE_INCDIR)",
      },
      sources = {
        "src/common.c",
        "src/tre/ltre.c",
      },
    },
  },
  type = "builtin",
}
version = "2.7.0-1"
