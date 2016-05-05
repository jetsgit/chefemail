angular.module('emailFilter', []).filter('dupe', ->
  return (data) ->
    checked = {}
    result = []
    angular.forEach(data, (val, key) ->
      if ( checked[val.email] == undefined)
        checked[val.email] = val.id
        result.push val.email
    )
    data = result
    return data
)
