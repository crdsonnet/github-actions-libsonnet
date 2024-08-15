# javascript

Configures the path to the action's code and the application used to execute the code.

## Subpackages

* [input](input.md)
* [output](output.md)

## Index

* [`fn new(name, main, description="defaults to the name")`](#fn-new)
* [`fn withAuthor(value)`](#fn-withauthor)
* [`fn withBranding(value)`](#fn-withbranding)
* [`fn withBrandingMixin(value)`](#fn-withbrandingmixin)
* [`fn withDescription(value)`](#fn-withdescription)
* [`fn withInputs(value)`](#fn-withinputs)
* [`fn withInputsMixin(value)`](#fn-withinputsmixin)
* [`fn withName(value)`](#fn-withname)
* [`fn withOutputs(value)`](#fn-withoutputs)
* [`fn withOutputsMixin(value)`](#fn-withoutputsmixin)
* [`fn withRuns(value)`](#fn-withruns)
* [`fn withRunsMixin(value)`](#fn-withrunsmixin)
* [`obj branding`](#obj-branding)
  * [`fn withColor(value)`](#fn-brandingwithcolor)
  * [`fn withIcon(value)`](#fn-brandingwithicon)
* [`obj runs`](#obj-runs)
  * [`fn withMain(value)`](#fn-runswithmain)
  * [`fn withPost(value)`](#fn-runswithpost)
  * [`fn withPostIf(value)`](#fn-runswithpostif)
  * [`fn withPre(value)`](#fn-runswithpre)
  * [`fn withPreIf(value)`](#fn-runswithpreif)
  * [`fn withUsing(value)`](#fn-runswithusing)

## Fields

### fn new

```jsonnet
new(name, main, description="defaults to the name")
```

PARAMETERS:

* **name** (`string`)
* **main** (`string`)
* **description** (`string`)
   - default value: `"defaults to the name"`

`new` initializes a Javascript action.

### fn withAuthor

```jsonnet
withAuthor(value)
```

PARAMETERS:

* **value** (`string`)

The name of the action's author.
### fn withBranding

```jsonnet
withBranding(value)
```

PARAMETERS:

* **value** (`object`)

You can use a color and Feather icon to create a badge to personalize and distinguish your action. Badges are shown next to your action name in GitHub Marketplace.
### fn withBrandingMixin

```jsonnet
withBrandingMixin(value)
```

PARAMETERS:

* **value** (`object`)

You can use a color and Feather icon to create a badge to personalize and distinguish your action. Badges are shown next to your action name in GitHub Marketplace.
### fn withDescription

```jsonnet
withDescription(value)
```

PARAMETERS:

* **value** (`string`)

A short description of the action.
### fn withInputs

```jsonnet
withInputs(value)
```

PARAMETERS:

* **value** (`object`)

Input parameters allow you to specify data that the action expects to use during runtime. GitHub stores input parameters as environment variables. Input ids with uppercase letters are converted to lowercase during runtime. We recommended using lowercase input ids.
### fn withInputsMixin

```jsonnet
withInputsMixin(value)
```

PARAMETERS:

* **value** (`object`)

Input parameters allow you to specify data that the action expects to use during runtime. GitHub stores input parameters as environment variables. Input ids with uppercase letters are converted to lowercase during runtime. We recommended using lowercase input ids.
### fn withName

```jsonnet
withName(value)
```

PARAMETERS:

* **value** (`string`)

The name of your action. GitHub displays the `name` in the Actions tab to help visually identify actions in each job.
### fn withOutputs

```jsonnet
withOutputs(value)
```

PARAMETERS:

* **value** (`object`)

Output parameters allow you to declare data that an action sets. Actions that run later in a workflow can use the output data set in previously run actions. For example, if you had an action that performed the addition of two inputs (x + y = z), the action could output the sum (z) for other actions to use as an input.
If you don't declare an output in your action metadata file, you can still set outputs and use them in a workflow.
### fn withOutputsMixin

```jsonnet
withOutputsMixin(value)
```

PARAMETERS:

* **value** (`object`)

Output parameters allow you to declare data that an action sets. Actions that run later in a workflow can use the output data set in previously run actions. For example, if you had an action that performed the addition of two inputs (x + y = z), the action could output the sum (z) for other actions to use as an input.
If you don't declare an output in your action metadata file, you can still set outputs and use them in a workflow.
### fn withRuns

```jsonnet
withRuns(value)
```

PARAMETERS:

* **value** (`object`)

Configures the path to the action's code and the application used to execute the code.
### fn withRunsMixin

```jsonnet
withRunsMixin(value)
```

PARAMETERS:

* **value** (`object`)

Configures the path to the action's code and the application used to execute the code.
### obj branding


#### fn branding.withColor

```jsonnet
branding.withColor(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"white"`, `"black"`, `"yellow"`, `"blue"`, `"green"`, `"orange"`, `"red"`, `"purple"`, `"gray-dark"`

The background color of the badge.
#### fn branding.withIcon

```jsonnet
branding.withIcon(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"activity"`, `"airplay"`, `"alert-circle"`, `"alert-octagon"`, `"alert-triangle"`, `"align-center"`, `"align-justify"`, `"align-left"`, `"align-right"`, `"anchor"`, `"aperture"`, `"archive"`, `"arrow-down-circle"`, `"arrow-down-left"`, `"arrow-down-right"`, `"arrow-down"`, `"arrow-left-circle"`, `"arrow-left"`, `"arrow-right-circle"`, `"arrow-right"`, `"arrow-up-circle"`, `"arrow-up-left"`, `"arrow-up-right"`, `"arrow-up"`, `"at-sign"`, `"award"`, `"bar-chart-2"`, `"bar-chart"`, `"battery-charging"`, `"battery"`, `"bell-off"`, `"bell"`, `"bluetooth"`, `"bold"`, `"book-open"`, `"book"`, `"bookmark"`, `"box"`, `"briefcase"`, `"calendar"`, `"camera-off"`, `"camera"`, `"cast"`, `"check-circle"`, `"check-square"`, `"check"`, `"chevron-down"`, `"chevron-left"`, `"chevron-right"`, `"chevron-up"`, `"chevrons-down"`, `"chevrons-left"`, `"chevrons-right"`, `"chevrons-up"`, `"circle"`, `"clipboard"`, `"clock"`, `"cloud-drizzle"`, `"cloud-lightning"`, `"cloud-off"`, `"cloud-rain"`, `"cloud-snow"`, `"cloud"`, `"code"`, `"command"`, `"compass"`, `"copy"`, `"corner-down-left"`, `"corner-down-right"`, `"corner-left-down"`, `"corner-left-up"`, `"corner-right-down"`, `"corner-right-up"`, `"corner-up-left"`, `"corner-up-right"`, `"cpu"`, `"credit-card"`, `"crop"`, `"crosshair"`, `"database"`, `"delete"`, `"disc"`, `"dollar-sign"`, `"download-cloud"`, `"download"`, `"droplet"`, `"edit-2"`, `"edit-3"`, `"edit"`, `"external-link"`, `"eye-off"`, `"eye"`, `"fast-forward"`, `"feather"`, `"file-minus"`, `"file-plus"`, `"file-text"`, `"file"`, `"film"`, `"filter"`, `"flag"`, `"folder-minus"`, `"folder-plus"`, `"folder"`, `"gift"`, `"git-branch"`, `"git-commit"`, `"git-merge"`, `"git-pull-request"`, `"globe"`, `"grid"`, `"hard-drive"`, `"hash"`, `"headphones"`, `"heart"`, `"help-circle"`, `"home"`, `"image"`, `"inbox"`, `"info"`, `"italic"`, `"layers"`, `"layout"`, `"life-buoy"`, `"link-2"`, `"link"`, `"list"`, `"loader"`, `"lock"`, `"log-in"`, `"log-out"`, `"mail"`, `"map-pin"`, `"map"`, `"maximize-2"`, `"maximize"`, `"menu"`, `"message-circle"`, `"message-square"`, `"mic-off"`, `"mic"`, `"minimize-2"`, `"minimize"`, `"minus-circle"`, `"minus-square"`, `"minus"`, `"monitor"`, `"moon"`, `"more-horizontal"`, `"more-vertical"`, `"move"`, `"music"`, `"navigation-2"`, `"navigation"`, `"octagon"`, `"package"`, `"paperclip"`, `"pause-circle"`, `"pause"`, `"percent"`, `"phone-call"`, `"phone-forwarded"`, `"phone-incoming"`, `"phone-missed"`, `"phone-off"`, `"phone-outgoing"`, `"phone"`, `"pie-chart"`, `"play-circle"`, `"play"`, `"plus-circle"`, `"plus-square"`, `"plus"`, `"pocket"`, `"power"`, `"printer"`, `"radio"`, `"refresh-ccw"`, `"refresh-cw"`, `"repeat"`, `"rewind"`, `"rotate-ccw"`, `"rotate-cw"`, `"rss"`, `"save"`, `"scissors"`, `"search"`, `"send"`, `"server"`, `"settings"`, `"share-2"`, `"share"`, `"shield-off"`, `"shield"`, `"shopping-bag"`, `"shopping-cart"`, `"shuffle"`, `"sidebar"`, `"skip-back"`, `"skip-forward"`, `"slash"`, `"sliders"`, `"smartphone"`, `"speaker"`, `"square"`, `"star"`, `"stop-circle"`, `"sun"`, `"sunrise"`, `"sunset"`, `"table"`, `"tablet"`, `"tag"`, `"target"`, `"terminal"`, `"thermometer"`, `"thumbs-down"`, `"thumbs-up"`, `"toggle-left"`, `"toggle-right"`, `"trash-2"`, `"trash"`, `"trending-down"`, `"trending-up"`, `"triangle"`, `"truck"`, `"tv"`, `"type"`, `"umbrella"`, `"underline"`, `"unlock"`, `"upload-cloud"`, `"upload"`, `"user-check"`, `"user-minus"`, `"user-plus"`, `"user-x"`, `"user"`, `"users"`, `"video-off"`, `"video"`, `"voicemail"`, `"volume-1"`, `"volume-2"`, `"volume-x"`, `"volume"`, `"watch"`, `"wifi-off"`, `"wifi"`, `"wind"`, `"x-circle"`, `"x-square"`, `"x"`, `"zap-off"`, `"zap"`, `"zoom-in"`, `"zoom-out"`

The name of the Feather icon to use.
### obj runs


#### fn runs.withMain

```jsonnet
runs.withMain(value)
```

PARAMETERS:

* **value** (`string`)

The file that contains your action code. The application specified in `using` executes this file.
#### fn runs.withPost

```jsonnet
runs.withPost(value)
```

PARAMETERS:

* **value** (`string`)

Allows you to run a script at the end of a job, once the `main:` action has completed. For example, you can use `post:` to terminate certain processes or remove unneeded files. The application specified with the `using` syntax will execute this file. The `post:` action always runs by default but you can override this using `post-if`.
#### fn runs.withPostIf

```jsonnet
runs.withPostIf(value)
```

PARAMETERS:

* **value** (`string`)

Allows you to define conditions for the `post:` action execution. The `post:` action will only run if the conditions in `post-if` are met. If not set, then `post-if` defaults to `always()`.
#### fn runs.withPre

```jsonnet
runs.withPre(value)
```

PARAMETERS:

* **value** (`string`)

Allows you to run a script at the start of a job, before the `main:` action begins. For example, you can use `pre:` to run a prerequisite setup script. The application specified with the `using` syntax will execute this file. The `pre:` action always runs by default but you can override this using `pre-if`.
#### fn runs.withPreIf

```jsonnet
runs.withPreIf(value)
```

PARAMETERS:

* **value** (`string`)

Allows you to define conditions for the `pre:` action execution. The `pre:` action will only run if the conditions in `pre-if` are met. If not set, then `pre-if` defaults to `always()`. Note that the `step` context is unavailable, as no steps have run yet.
#### fn runs.withUsing

```jsonnet
runs.withUsing(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"node12"`, `"node16"`, `"node20"`

The application used to execute the code specified in `main`.