exports.addAnimationOptionsToObjects = (animationOptions, objects) ->
  if objects and animationOptions
    for object in objects
      object.states.animationOptions = animationOptions

exports.addAnimationOptionsToObject = (animationOptions, object) ->
  exports.addAnimationOptionsToObjects(animationOptions, [object])

