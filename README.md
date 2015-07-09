# Framer Modules

[Framer modules](http://framerjs.com/docs/#modules) provide a simple way to 
separate code and reuse functionality across projects.

All modules should be written in CoffeeScript.

## Including modules in your project

The best way to include these module repository in your project is to use
[git submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules) to include
this project as the module directory in your CoffeeScript project.

```
rm -rf modules
git submodule add <git@git.sittercity.com:sdefreyssinet/framer-modules.git> modules
```

## Creating a new module

All modules are written in CoffeeScript or Javascript. However for consistency
this project will always use CoffeeScript.

Create a new file with a name that is meaningful to your module.

In the module, anything prefixed with `exports` will be available to consumers.

```coffeescript
exports.myFunction = (arg1, arg2) ->
  "#{arg1}#{arg2}"
```

## Importing a module

```coffeescript
myModule = require "myModule"
```

Module functions are available on the variable you assigned the module to, in
this case the `myModule` variable.

```coffeescript
myModule.myFunction("foo", "bar")
```
