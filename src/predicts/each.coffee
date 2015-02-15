{Predict} = require 'sleet'

module.exports = class Exp extends Predict
    generate: (context) ->
        keys = (key for key, value of @attributes).join ','
        @tag.setAttribute 'each', "{#{keys} in #{@content}}"
