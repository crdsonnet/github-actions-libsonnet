# input



## Index

* [`fn withDefault(value)`](#fn-withdefault)
* [`fn withDeprecationMessage(value)`](#fn-withdeprecationmessage)
* [`fn withDescription(value)`](#fn-withdescription)
* [`fn withRequired(value=true)`](#fn-withrequired)

## Fields

### fn withDefault

```jsonnet
withDefault(value)
```

PARAMETERS:

* **value** (`string`)

A string representing the default value. The default value is used when an input parameter isn't specified in a workflow file.
### fn withDeprecationMessage

```jsonnet
withDeprecationMessage(value)
```

PARAMETERS:

* **value** (`string`)

A string shown to users using the deprecated input.
### fn withDescription

```jsonnet
withDescription(value)
```

PARAMETERS:

* **value** (`string`)

A string description of the input parameter.
### fn withRequired

```jsonnet
withRequired(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

A boolean to indicate whether the action requires the input parameter. Set to `true` when the parameter is required.