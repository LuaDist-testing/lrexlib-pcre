-- This file was automatically generated for the LuaDist project.

dependencies = {
  "lua >= 5.1",
}
description = {
  summary = "Regular expression library binding (PCRE flavour).",
  license = "MIT/X11",
  homepage = "http://github.com/rrthomas/lrexlib",
  detailed = "Lrexlib is a regular expression library for Lua 5.1 and 5.2, which\
provides bindings for several regular expression libraries.\
This rock provides the PCRE bindings.",
}
-- LuaDist source
source = {
  tag = "2.8.0-1",
  url = "git://github.com/LuaDist-testing/lrexlib-pcre.git"
}
-- Original source
-- source = {
--   url = "git://github.com/rrthomas/lrexlib.git",
--   tag = "rel-2-8-0",
-- }
build = {
  modules = {
    rex_pcre = {
      defines = {
        "VERSION=\"2.8.0\"",
        "LUA_COMPAT_5_2",
      },
      incdirs = {
        "$(PCRE_INCDIR)",
      },
      libraries = {
        "pcre",
      },
      sources = {
        "src/common.c",
        "src/pcre/lpcre.c",
        "src/pcre/lpcre_f.c",
      },
      libdirs = {
        "$(PCRE_LIBDIR)",
      },
    },
  },
  type = "builtin",
}
external_dependencies = {
  PCRE = {
    header = "pcre.h",
    library = "pcre",
  },
}
package = "lrexlib-pcre"
version = "2.8.0-1"