{compile} = require 'sleet'
Print = require './tags/print'
Riot = require './tags/riot'
Exp = require './predicts/exp'
If = require './predicts/if'
Each = require './predicts/each'

tags =
    print: Print
    riot: Riot

predicts =
    exp: Exp
    if: If
    each: Each

exports.compile = (input, options = {}) ->
    options.tags or= tags
    options.predicts or= predicts
    options.tags[key] = value for key, value of tags when not options.tags[key]
    options.predicts[key] = value for key, value of predicts when not options.predicts[key]

    compile input, options
