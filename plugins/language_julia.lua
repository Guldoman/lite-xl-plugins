-- mod-version:2 -- lite-xl 2.0
-- Support for the Julia programming language:
-- Covers the most used keywords up to Julia version 1.6.4

local syntax = require "core.syntax"

syntax.add {
  name = "Julia",
  files = { "%.jl$" },
  comment = "#",
  patterns = {
    { pattern = { "#=", "=#" },         type = "comment"  },
    { pattern = "#.-\n",                type = "comment"  },
    { pattern = { '[ruU]?"""', '"""'; '\\' },  type = "string"   },
    { pattern = { '"', '"', '\\' },     type = "string"   },
    { pattern = { "`", "`", '\\' },     type = "string"   },
    { pattern = "0[oO_][0-7]+",         type = "number"   },
    { pattern = "-?0x[%x_]+",           type = "number"   },
    { pattern = "-?%d+_%d",             type = "number"   },
    { pattern = "-?%d+[%d%.eE]*f?",     type = "number"   },
    { pattern = "-?%.?%d+f?",           type = "number"   },
    { pattern = "[%+%-=/%*%^%%<>!~|&%:]", type = "operator"},
    { pattern = "[%a_][%w_]*%f[(]",     type = "function" },
    { pattern = "@[%a_][%w_]",          type = "function" },
    { pattern = "[%a_][%w_]*%.*!",      type = "keyword2" },
    { pattern = { "{", "}"},            type = "string"},
    { pattern = "[%a_][%w_]*",          type = "symbol"   },
  },
  symbols = {
    -- keywords
    ["baremodule"]        = "keyword",
    ["begin"]             = "keyword",
    ["break`"]            = "keyword",
    ["catch"]             = "keyword",
    ["const"]             = "keyword",
    ["continue"]          = "keyword",
    ["do"]                = "keyword",
    ["Dict"]              = "keyword",
    ["Set"]               = "keyword",
    ["Union"]             = "keyword",
    ["else"]              = "keyword",
    ["elseif"]            = "keyword",
    ["end"]               = "keyword",
    ["export"]            = "keyword",
    ["finally"]           = "keyword",
    ["for"]               = "keyword",
    ["function"]          = "keyword",
    ["global"]            = "keyword",
    ["if"]                = "keyword",
    ["in"]                = "keyword",
    ["import"]            = "keyword",
    ["let"]               = "keyword",
    ["local"]             = "keyword",
    ["macro"]             = "keyword",
    ["module"]            = "keyword",
    ["quote"]             = "keyword",
    ["return"]            = "keyword",
    ["try"]               = "keyword",
    ["typeof"]            = "keyword",
    ["using"]             = "keyword",
    ["while"]             = "keyword",

    -- types
    ["struct"]            = "keyword2",
    ["abstract type"]     = "keyword2",
    ["primitive type"]    = "keyword2",
    ["mutable struct"]    = "keyword2",
    ["Char"]              = "keyword2",
    ["Bool"]              = "keyword2",
    ["Int"]               = "keyword2",
    ["Int8"]              = "keyword2",
    ["UInt8"]             = "keyword2",
    ["Int16"]             = "keyword2",
    ["UInt16"]            = "keyword2",
    ["Int32"]             = "keyword2",
    ["UInt32"]            = "keyword2",
    ["Int64"]             = "keyword2",
    ["UInt64"]            = "keyword2",
    ["Int128"]            = "keyword2",
    ["UInt128"]           = "keyword2",
    ["Float16"]           = "keyword2",
    ["Float32"]           = "keyword2",
    ["Float64"]           = "keyword2",
    ["Vector"]            = "keyword2",
    ["Matrix"]            = "keyword2",
    ["Ref"]               = "keyword2",
    ["String"]            = "keyword2",

    -- literals
    ["missing"]          = "literal",
    ["true"]             = "literal",
    ["false"]            = "literal",
  },
}
