{Predict} = require 'sleet'

module.exports = class If extends Predict
    generate: (context) ->
        for key, value of @attributes
            if @content
                @tag.setAttribute key, "{#{value}: #{@content}}"
            else
                @tag.setAttribute 'if', "{#{key}}"
