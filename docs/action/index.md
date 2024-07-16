# action



## Subpackages

* [runs.composite.step](runs/composite/step.md)

## Index

* [`fn withAuthor(value)`](#fn-withauthor)
* [`fn withBranding(value)`](#fn-withbranding)
* [`fn withBrandingMixin(value)`](#fn-withbrandingmixin)
* [`fn withDescription(value)`](#fn-withdescription)
* [`fn withInputs(value)`](#fn-withinputs)
* [`fn withInputsMixin(value)`](#fn-withinputsmixin)
* [`fn withName(value)`](#fn-withname)
* [`fn withOutputs(value)`](#fn-withoutputs)
* [`fn withRuns(value)`](#fn-withruns)
* [`fn withRunsMixin(value)`](#fn-withrunsmixin)
* [`obj branding`](#obj-branding)
  * [`fn withColor(value)`](#fn-brandingwithcolor)
  * [`fn withIcon(value)`](#fn-brandingwithicon)
* [`obj runs`](#obj-runs)
  * [`fn withComposite(value)`](#fn-runswithcomposite)
  * [`fn withCompositeMixin(value)`](#fn-runswithcompositemixin)
  * [`fn withDocker(value)`](#fn-runswithdocker)
  * [`fn withDockerMixin(value)`](#fn-runswithdockermixin)
  * [`fn withJavascript(value)`](#fn-runswithjavascript)
  * [`fn withJavascriptMixin(value)`](#fn-runswithjavascriptmixin)
  * [`obj composite`](#obj-runscomposite)
    * [`fn withSteps(value)`](#fn-runscompositewithsteps)
    * [`fn withStepsMixin(value)`](#fn-runscompositewithstepsmixin)
    * [`fn withUsing()`](#fn-runscompositewithusing)
  * [`obj docker`](#obj-runsdocker)
    * [`fn withArgs(value)`](#fn-runsdockerwithargs)
    * [`fn withArgsMixin(value)`](#fn-runsdockerwithargsmixin)
    * [`fn withEntrypoint(value)`](#fn-runsdockerwithentrypoint)
    * [`fn withEnv(value)`](#fn-runsdockerwithenv)
    * [`fn withEnvMixin(value)`](#fn-runsdockerwithenvmixin)
    * [`fn withImage(value)`](#fn-runsdockerwithimage)
    * [`fn withPostEntrypoint(value)`](#fn-runsdockerwithpostentrypoint)
    * [`fn withPostIf(value)`](#fn-runsdockerwithpostif)
    * [`fn withPreEntrypoint(value)`](#fn-runsdockerwithpreentrypoint)
    * [`fn withPreIf(value)`](#fn-runsdockerwithpreif)
    * [`fn withUsing()`](#fn-runsdockerwithusing)
    * [`obj env`](#obj-runsdockerenv)
      * [`fn withStringContainingExpressionSyntax(value)`](#fn-runsdockerenvwithstringcontainingexpressionsyntax)
  * [`obj javascript`](#obj-runsjavascript)
    * [`fn withMain(value)`](#fn-runsjavascriptwithmain)
    * [`fn withPost(value)`](#fn-runsjavascriptwithpost)
    * [`fn withPostIf(value)`](#fn-runsjavascriptwithpostif)
    * [`fn withPre(value)`](#fn-runsjavascriptwithpre)
    * [`fn withPreIf(value)`](#fn-runsjavascriptwithpreif)
    * [`fn withUsing(value)`](#fn-runsjavascriptwithusing)

## Fields

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

* **value** (`string`)


### fn withRuns

```jsonnet
withRuns(value)
```

PARAMETERS:

* **value** (`object`)


### fn withRunsMixin

```jsonnet
withRunsMixin(value)
```

PARAMETERS:

* **value** (`object`)


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


#### fn runs.withComposite

```jsonnet
runs.withComposite(value)
```

PARAMETERS:

* **value** (`object`)

Configures the path to the composite action, and the application used to execute the code.
#### fn runs.withCompositeMixin

```jsonnet
runs.withCompositeMixin(value)
```

PARAMETERS:

* **value** (`object`)

Configures the path to the composite action, and the application used to execute the code.
#### fn runs.withDocker

```jsonnet
runs.withDocker(value)
```

PARAMETERS:

* **value** (`object`)

Configures the image used for the Docker action.
#### fn runs.withDockerMixin

```jsonnet
runs.withDockerMixin(value)
```

PARAMETERS:

* **value** (`object`)

Configures the image used for the Docker action.
#### fn runs.withJavascript

```jsonnet
runs.withJavascript(value)
```

PARAMETERS:

* **value** (`object`)

Configures the path to the action's code and the application used to execute the code.
#### fn runs.withJavascriptMixin

```jsonnet
runs.withJavascriptMixin(value)
```

PARAMETERS:

* **value** (`object`)

Configures the path to the action's code and the application used to execute the code.
#### obj runs.composite


##### fn runs.composite.withSteps

```jsonnet
runs.composite.withSteps(value)
```

PARAMETERS:

* **value** (`array`)

The run steps that you plan to run in this action.
##### fn runs.composite.withStepsMixin

```jsonnet
runs.composite.withStepsMixin(value)
```

PARAMETERS:

* **value** (`array`)

The run steps that you plan to run in this action.
##### fn runs.composite.withUsing

```jsonnet
runs.composite.withUsing()
```


To use a composite run steps action, set this to 'composite'.
#### obj runs.docker


##### fn runs.docker.withArgs

```jsonnet
runs.docker.withArgs(value)
```

PARAMETERS:

* **value** (`array`)

An array of strings that define the inputs for a Docker container. Inputs can include hardcoded strings. GitHub passes the `args` to the container's `ENTRYPOINT` when the container starts up.
The `args` are used in place of the `CMD` instruction in a `Dockerfile`. If you use `CMD` in your `Dockerfile`, use the guidelines ordered by preference:
- Document required arguments in the action's README and omit them from the `CMD` instruction.
- Use defaults that allow using the action without specifying any `args`.
- If the action exposes a `--help` flag, or something similar, use that to make your action self-documenting.
##### fn runs.docker.withArgsMixin

```jsonnet
runs.docker.withArgsMixin(value)
```

PARAMETERS:

* **value** (`array`)

An array of strings that define the inputs for a Docker container. Inputs can include hardcoded strings. GitHub passes the `args` to the container's `ENTRYPOINT` when the container starts up.
The `args` are used in place of the `CMD` instruction in a `Dockerfile`. If you use `CMD` in your `Dockerfile`, use the guidelines ordered by preference:
- Document required arguments in the action's README and omit them from the `CMD` instruction.
- Use defaults that allow using the action without specifying any `args`.
- If the action exposes a `--help` flag, or something similar, use that to make your action self-documenting.
##### fn runs.docker.withEntrypoint

```jsonnet
runs.docker.withEntrypoint(value)
```

PARAMETERS:

* **value** (`string`)

Overrides the Docker `ENTRYPOINT` in the `Dockerfile`, or sets it if one wasn't already specified. Use `entrypoint` when the `Dockerfile` does not specify an `ENTRYPOINT` or you want to override the `ENTRYPOINT` instruction. If you omit `entrypoint`, the commands you specify in the Docker `ENTRYPOINT` instruction will execute. The Docker `ENTRYPOINT instruction has a *shell* form and *exec* form. The Docker `ENTRYPOINT` documentation recommends using the *exec* form of the `ENTRYPOINT` instruction.
##### fn runs.docker.withEnv

```jsonnet
runs.docker.withEnv(value)
```

PARAMETERS:

* **value** (`object`,`string`)

Specifies a key/value map of environment variables to set in the container environment.
##### fn runs.docker.withEnvMixin

```jsonnet
runs.docker.withEnvMixin(value)
```

PARAMETERS:

* **value** (`object`,`string`)

Specifies a key/value map of environment variables to set in the container environment.
##### fn runs.docker.withImage

```jsonnet
runs.docker.withImage(value)
```

PARAMETERS:

* **value** (`string`)

The Docker image to use as the container to run the action. The value can be the Docker base image name, a local `Dockerfile` in your repository, or a public image in Docker Hub or another registry. To reference a `Dockerfile` local to your repository, use a path relative to your action metadata file. The `docker` application will execute this file.
##### fn runs.docker.withPostEntrypoint

```jsonnet
runs.docker.withPostEntrypoint(value)
```

PARAMETERS:

* **value** (`string`)

Allows you to run a cleanup script once the `runs.entrypoint` action has completed. GitHub Actions uses `docker run` to launch this action. Because GitHub Actions runs the script inside a new container using the same base image, the runtime state is different from the main `entrypoint` container. You can access any state you need in either the workspace, `HOME`, or as a `STATE_` variable. The `post-entrypoint:` action always runs by default but you can override this using `post-if`.
##### fn runs.docker.withPostIf

```jsonnet
runs.docker.withPostIf(value)
```

PARAMETERS:

* **value** (`string`)

Allows you to define conditions for the `post:` action execution. The `post:` action will only run if the conditions in `post-if` are met. If not set, then `post-if` defaults to `always()`.
##### fn runs.docker.withPreEntrypoint

```jsonnet
runs.docker.withPreEntrypoint(value)
```

PARAMETERS:

* **value** (`string`)

Allows you to run a script before the `entrypoint` action begins. For example, you can use `pre-entrypoint:` to run a prerequisite setup script. GitHub Actions uses `docker run` to launch this action, and runs the script inside a new container that uses the same base image. This means that the runtime state is different from the main `entrypoint` container, and any states you require must be accessed in either the workspace, `HOME`, or as a `STATE_` variable. The `pre-entrypoint:` action always runs by default but you can override this using `pre-if`.
##### fn runs.docker.withPreIf

```jsonnet
runs.docker.withPreIf(value)
```

PARAMETERS:

* **value** (`string`)

Allows you to define conditions for the `pre:` action execution. The `pre:` action will only run if the conditions in `pre-if` are met. If not set, then `pre-if` defaults to `always()`. Note that the `step` context is unavailable, as no steps have run yet.
##### fn runs.docker.withUsing

```jsonnet
runs.docker.withUsing()
```


You must set this value to 'docker'.
##### obj runs.docker.env


###### fn runs.docker.env.withStringContainingExpressionSyntax

```jsonnet
runs.docker.env.withStringContainingExpressionSyntax(value)
```

PARAMETERS:

* **value** (`string`)


#### obj runs.javascript


##### fn runs.javascript.withMain

```jsonnet
runs.javascript.withMain(value)
```

PARAMETERS:

* **value** (`string`)

The file that contains your action code. The application specified in `using` executes this file.
##### fn runs.javascript.withPost

```jsonnet
runs.javascript.withPost(value)
```

PARAMETERS:

* **value** (`string`)

Allows you to run a script at the end of a job, once the `main:` action has completed. For example, you can use `post:` to terminate certain processes or remove unneeded files. The application specified with the `using` syntax will execute this file. The `post:` action always runs by default but you can override this using `post-if`.
##### fn runs.javascript.withPostIf

```jsonnet
runs.javascript.withPostIf(value)
```

PARAMETERS:

* **value** (`string`)

Allows you to define conditions for the `post:` action execution. The `post:` action will only run if the conditions in `post-if` are met. If not set, then `post-if` defaults to `always()`.
##### fn runs.javascript.withPre

```jsonnet
runs.javascript.withPre(value)
```

PARAMETERS:

* **value** (`string`)

Allows you to run a script at the start of a job, before the `main:` action begins. For example, you can use `pre:` to run a prerequisite setup script. The application specified with the `using` syntax will execute this file. The `pre:` action always runs by default but you can override this using `pre-if`.
##### fn runs.javascript.withPreIf

```jsonnet
runs.javascript.withPreIf(value)
```

PARAMETERS:

* **value** (`string`)

Allows you to define conditions for the `pre:` action execution. The `pre:` action will only run if the conditions in `pre-if` are met. If not set, then `pre-if` defaults to `always()`. Note that the `step` context is unavailable, as no steps have run yet.
##### fn runs.javascript.withUsing

```jsonnet
runs.javascript.withUsing(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"node12"`, `"node16"`, `"node20"`

The application used to execute the code specified in `main`.