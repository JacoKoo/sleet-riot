{Transformer} = require 'sleet'

module.exports = class Riot extends Transformer
    constructor: ->
        super
        @indent = -1 - @indent

    transform: (code, options) ->
        riot = require 'riot'
        options.type = 'none' unless options.type
        riot.compile(code, options)
