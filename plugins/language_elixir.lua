-- mod-version:3 --lite-xl 2.1
local syntax = require "core.syntax"

syntax.add {
  name = "Elixir",
  files = { "%.ex$", "%.exs$"},
  comment = "#",
  patterns = {
    { pattern = "#.*\n",                type = "comment"  },
    { pattern = { ':"', '"', '\\' },    type = "number"   },
    { pattern = { '"""', '"""', '\\' }, type = "string"   },
    { pattern = { '"', '"', '\\' },     type = "string"   },
    { pattern = { "'", "'", '\\' },     type = "string"   },
    { pattern = { '~%a[/"|\'%(%[%{<]', '[/"|\'%)%]%}>]', '\\' }, type = "string"},
    { pattern = "-?0x%x+",              type = "number"   },
    { pattern = "-?%d+[%d%.eE]*f?",     type = "number"   },
    { pattern = "-?%.?%d+f?",           type = "number"   },
    { pattern = ':"?[%a_][%w_]*"?',     type = "number"   },
    { pattern = "[%a][%w_!?]*%f[(]",    type = "function" },
    { pattern = "%u%w+",                type = "normal"   },
    { pattern = "@[%a_][%w_]*",         type = "keyword2" },
    { pattern = "_%a[%w_]*",            type = "keyword2" },
    { pattern = "[%+%-=/%*<>!|&]",      type = "operator" },
    { pattern = "[%a_][%w_]*",          type = "symbol"   },
  },
  symbols = {
    ["def"]              = "keyword",
    ["defp"]             = "keyword",
    ["defguard"]         = "keyword",
    ["defguardp"]        = "keyword",
    ["defmodule"]        = "keyword",
    ["defprotocol"]      = "keyword",
    ["defimpl"]          = "keyword",
    ["defrecord"]        = "keyword",
    ["defrecordp"]       = "keyword",
    ["defmacro"]         = "keyword",
    ["defmacrop"]        = "keyword",
    ["defdelegate"]      = "keyword",
    ["defoverridable"]   = "keyword",
    ["defexception"]     = "keyword",
    ["defcallback"]      = "keyword",
    ["defstruct"]        = "keyword",
    ["for"]              = "keyword",
    ["case"]             = "keyword",
    ["when"]             = "keyword",
    ["with"]             = "keyword",
    ["cond"]             = "keyword",
    ["if"]               = "keyword",
    ["unless"]           = "keyword",
    ["try"]              = "keyword",
    ["receive"]          = "keyword",
    ["after"]            = "keyword",
    ["raise"]            = "keyword",
    ["rescue"]           = "keyword",
    ["catch"]            = "keyword",
    ["else"]             = "keyword",
    ["quote"]            = "keyword",
    ["unquote"]          = "keyword",
    ["super"]            = "keyword",
    ["unquote_splicing"] = "keyword",
    ["do"]               = "keyword",
    ["end"]              = "keyword",
    ["fn"]               = "keyword",
    ["import"]           = "keyword2",
    ["alias"]            = "keyword2",
    ["use"]              = "keyword2",
    ["require"]          = "keyword2",
    ["and"]              = "operator",
    ["or"]               = "operator",
    ["true"]             = "literal",
    ["false"]            = "literal",
    ["nil"]              = "literal",
  },
}

syntax.add {
  files = { "%.l?eex$" },
  patterns = {
    { pattern = { "<!%-%-", "%-%->" },     type = "comment"  },
    { pattern = { '%f[^>][^<]', '%f[<]' }, type = "normal"   },
    { pattern = { '<%%=?', '%%>' },        type = "normal"   },
    { pattern = { '"', '"', '\\' },        type = "string"   },
    { pattern = { "'", "'", '\\' },        type = "string"   },
    { pattern = "0x[%da-fA-F]+",           type = "number"   },
    { pattern = "-?%d+[%d%.]*f?",          type = "number"   },
    { pattern = "-?%.?%d+f?",              type = "number"   },
    { pattern = "%f[^<]![%a_][%w_]*",      type = "keyword2" },
    { pattern = "%f[^<][%a_][%w_]*",       type = "function" },
    { pattern = "%f[^<]/[%a_][%w_]*",      type = "function" },
    { pattern = "[%a_][%w_]*",             type = "keyword"  },
    { pattern = "[/<>=]",                  type = "operator" },
  },
  symbols = {},
}
