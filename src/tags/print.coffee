{Tag} = require 'sleet'

module.exports = class Print extends Tag
    generate: (context) ->
        context.pop().push('{').push(@content).push('}')
        context.eol() if @isInline
