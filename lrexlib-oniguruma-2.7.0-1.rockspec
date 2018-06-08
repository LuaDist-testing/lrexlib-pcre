dependencies = {
  "lua >= 5.1",
}
external_dependencies = {
  ONIG = {
    header = "oniguruma.h",
    library = "onig",
  },
}
description = {
  summary = "Regular expression library binding (oniguruma flavour).",
  detailed = "      Lrexlib is a regular expression library for Lua 5.1, which\
      provides bindings for several regular expression libraries.\
      This rock provides the oniguruma bindings.\
    ",
  homepage = "http://github.com/rrthomas/lrexlib",
  license = "MIT/X11",
}
package = "Lrexlib-oniguruma"
source = {
  url = "https://github.com/downloads/rrthomas/lrexlib/lrexlib-2.7.0.zip",
  md5 = "9cc78294a2841a80fd6b4cb80914d186",
}
build = {
  modules = {
    rex_onig = {
      defines = {
        "VERSION=\"2.7.0\"",
      },
      libdirs = {
        "$(ONIG_LIBDIR)",
      },
      libraries = {
        "onig",
      },
      incdirs = {
        "$(ONIG_INCDIR)",
      },
      sources = {
        "src/common.c",
        "src/oniguruma/lonig.c",
        "src/oniguruma/lonig_f.c",
      },
    },
  },
  type = "builtin",
}
version = "2.7.0-1"
