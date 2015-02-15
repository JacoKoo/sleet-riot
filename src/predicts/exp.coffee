{Predict} = require 'sleet'

module.exports = class Exp extends Predict
    generate: (context) ->
        @tag.setAttribute key, '{' + value + '}' for key, value of @attributes
