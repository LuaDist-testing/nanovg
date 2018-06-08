-- This file was automatically generated for the LuaDist project.

package = "nanovg"
version = "0.1.2-0"
-- LuaDist source
source = {
  tag = "0.1.2-0",
  url = "git://github.com/LuaDist-testing/nanovg.git"
}
-- Original source
-- source = {
--    url = "https://github.com/starwing/lua-nanovg/archive/0.1.2.tar.gz",
--    tag = "0.1.2-0",
--    dir = "lua-nanovg-0.1.2"
-- }
description = {
   summary = "Lua binding for NanoVG",
   homepage = "https://github.com/starwing/lua-nanovg",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      nvg = {
         sources = {
            "lua-nanovg.c",
            "nanovg/src/nanovg.c"
         }
      }
   },
   platforms = {
      windows = {
         modules = {
            nvg = {
               libraries = {
                  "opengl32"
               }
            }
         }
      }
   }
}