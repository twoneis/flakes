# Author: Rosé Pine <hi@rosepinetheme.com>
# Upstream: https://github.com/rose-pine/helix
# Contributing:
#   Please submit changes to https://github.com/rose-pine/helix.
#   The Rosé Pine team will update Helix, including you as a co-author.
{
  rosepine = let
    base           = "#191724";
    surface        = "#1f1d2e";
    overlay        = "#26233a";
    muted          = "#6e6a86";
    subtle         = "#908caa";
    text           = "#e0def4";
    love           = "#eb6f92";
    love_10        = "#311f30";
    gold           = "#f6c177";
    gold_10        = "#30282c";
    rose           = "#ebbcba";
    rose_10        = "#2f2834";
    pine           = "#31748f";
    pine_10        = "#1a2030";
    foam           = "#9ccfd8";
    foam_10        = "#252937";
    iris           = "#c4a7e7";
    iris_10        = "#2b2539";
    highlight_low  = "#21202e";
    highlight_med  = "#403d52";
    highlight_high = "#524f67";
  in {
    
    "ui.background" = { bg = base; };
    "ui.background.separator" = { bg = base; };

    "ui.cursor" = { fg = text; bg = highlight_high; };
    # "ui.cursor.select" = {};
    "ui.cursor.match" = { fg = text; bg = highlight_med; };
    "ui.cursor.primary" = { fg = text; bg = muted; };

    # "ui.gutter" = {};
    # "ui.gutter.selected" = {};

    "ui.linenr" = { fg = muted; };
    "ui.linenr.selected" = { fg = text; };

    "ui.statusline" = { fg = subtle; bg = surface; };
    "ui.statusline.inactive" = { fg = muted; bg = surface; };
    "ui.statusline.normal" = { fg = rose; bg = rose_10; };
    "ui.statusline.insert" = { fg = foam; bg = foam_10; };
    "ui.statusline.select" = { fg = iris; bg = iris_10; };
    # "ui.statusline.separator" = {};

    "ui.popup" = { bg = surface; };
    "ui.popup.info" = { bg = surface; };

    "ui.window" = { fg = overlay; bg = base; };
    "ui.help" = { fg = subtle; bg = overlay; };

    "ui.text" = { fg = text; };
    "ui.text.focus" = { bg = overlay; };
    "ui.text.info" = { fg = subtle; };

    "ui.virtual.ruler" = { bg = overlay; };
    "ui.virtual.whitespace" = { fg = highlight_high; };
    "ui.virtual.indent-guide" = { fg = muted; };
    "ui.virtual.inlay-hint" = { fg = subtle; };

    "ui.menu" = { fg = subtle; bg = surface; };
    "ui.menu.selected" = { fg = text; };
    "ui.menu.scroll" = { fg = muted; bg = highlight_med; };

    "ui.selection" = { bg = overlay; };
    "ui.selection.primary" = { bg = highlight_med; };

    "ui.cursorline.primary" = { bg = highlight_low; };
    "ui.cursorline.secondary" = { bg = surface; };

    "warning" = gold;
    "error" = love;
    "info" = foam;
    "hint" = iris;
    "debug" = rose;

    "diagnostic" = { underline = { color = subtle; style = curl; }; };
    "diagnostic.hint" = { underline = { color = iris; style = curl; }; };
    "diagnostic.info" = { underline = { color = foam; style = curl; }; };
    "diagnostic.warning" = { underline = { color = gold; style = curl; }; };
    "diagnostic.error" = { underline = { color = love; style = curl; }; };
    "special" = rose;

    "attribute" = "iris";

    "type" = foam;
    # "type.builtin" = "";

    "constructor" = foam;

    "constant" = foam;
    "constant.builtin" = rose;
    # "constant.builtin.boolean" = "";
    "constant.character" = gold;
    "constant.character.escape" = pine;
    "constant.numeric" = gold;
    # "constant.numeric.integer" = "";
    # "constant.numeric.float" = "";

    "string" = gold;
    # "string.regexp" = "";
    # "string.special" = "";
    # "string.special.path" = "";
    # "string.special.url" = "";
    # "string.special.symbol" = "";

    "comment" = { fg = muted; modifiers = ["italic"];};
    # "comment.line" = "";
    # "comment.block" = "";
    # "comment.block.documenation" = "";

    "variable" = text;
    "variable.builtin" = love;
    "variable.parameter" = iris;
    # "variable.other" = "";
    # "variable.other.member" = "";

    "label" = foam;

    "punctuation" = subtle;
    # "punctuation.delimiter" = "";
    # "punctuation.bracket" = "";
    # "punctuation.special" = "";

    "keyword" = pine;
    # "keyword.control" = "";
    # "keyword.control.conditional" = "";
    # "keyword.control.repeat" = "";
    # "keyword.control.import" = "";
    # "keyword.control.return" = "";
    # "keyword.control.exception" = "";
    "keyword.operator" = subtle;
    # "keyword.directive" = "";
    # "keyword.function" = "";
    # "keyword.storage" = "";
    # "keyword.storage.type" = "";
    # "keyword.storage.modifier" = "";

    "operator" = subtle;

    "function" = rose # maybe pine;
    "function.builtin" = love;
    # "function.method" = "";
    # "function.macro" = "";
    # "function.special" = "";

    "tag" = foam;

    "namespace" = iris;

    "markup.heading.marker" = muted;
    "markup.heading" = { fg = iris; modifiers = ["bold"]; };
    "markup.heading.1" = { fg = "iris"; modifiers = ["bold"]; };
    "markup.heading.2" = { fg = foam; modifiers = ["bold"]; };
    "markup.heading.3" = { fg = rose; modifiers = ["bold"]; };
    "markup.heading.4" = { fg = gold; modifiers = ["bold"]; };
    "markup.heading.5" = { fg = pine; modifiers = ["bold"]; };
    "markup.heading.6" = { fg = foam; modifiers = ["bold"]; };
    # "markup.heading.completion" = "";
    # "markup.heading.hover" = "";
    "markup.list" = muted;
    # "markup.list.unnumbered" = "";
    # "markup.list.numbered" = "";
    "markup.bold" = { modifiers = ["bold"]; };
    "markup.italic" = { modifiers = ["italic"]; };
    "markup.link" = iris;
    "markup.link.url" = { fg = iris,  underline = { color = iris, style = "line" }; } ;
    "markup.link.label" = subtle;
    "markup.link.text" = text;
    "markup.quote" = subtle;
    "markup.raw" = subtle;
    # "markup.raw.inline" = {};
    # "markup.raw.inline.completion" = {};
    # "markup.raw.inline.hover" = {};
    # "markup.raw.block" = {};
    # "markup.normal" = "";
    # "markup.normal.completion" = "";
    # "markup.normal.hover" = "";

    "diff" = overlay;
    "diff.plus" = foam;
    "diff.minus" = love;
    "diff.delta" = highlight_high;
    # "diff.delta.moved" = "";

  }

}
