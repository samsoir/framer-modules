exports.addStatesToObjects = (states, objects) ->
  if objects
    for object in objects
      object.states.add(states)

exports.addStatesToObject = (states, object) ->
  addStatesToObjects(states, [object])

exports.switchObjectsToInstantState = (objects, state) ->
  if objects and state
    for object in objects
      object.states.switchInstant(state)

exports.switchObjectsToState = (objects, state) ->
  if objects and state
    for object in objects
      object.states.switch(state)
