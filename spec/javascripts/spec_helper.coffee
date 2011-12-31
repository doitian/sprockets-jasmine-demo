#= require_this
#= require_tree ./support

beforeEach ->
  @addMatchers
    toBeEmpty: -> @actual.length == 0
