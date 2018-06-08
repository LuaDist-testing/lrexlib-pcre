-- This file was automatically generated for the LuaDist project.

package="lrexlib-pcre"
version="2.4.0-1"
-- LuaDist source
source = {
  tag = "2.4.0-1",
  url = "git://github.com/LuaDist-testing/lrexlib-pcre.git"
}
-- Original source
-- source = {
--    url = "http://luaforge.net/frs/download.php/3599/lrexlib-2.4.0.zip"
-- }
description = {
   summary = "Lua binding of the PCRE regular expression library.",
   detailed = [[
      Lrexlib is a regular expression library for Lua 5.1, which
      provides bindings for POSIX and PCRE regular expression libraries.
      This rock provides the PCRE bindings.
   ]],
   homepage = "http://lrexlib.luaforge.net/",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   PCRE = {
      header = "pcre.h"
   }
}
build = {
   type = "module",
   modules = {
      rex_pcre = {
         sources = {"src/common.c", "src/pcre/lpcre.c", "src/pcre/lpcre_f.c"},
         libraries = {"pcre"},
         incdirs = {"$(PCRE_INCDIR)"},
         libdirs = {"$(PCRE_LIBDIR)"}
      }
   }
}
