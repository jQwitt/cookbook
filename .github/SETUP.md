# Setup

**Note:** instructions are for Mac `Catalina` using `zsh`

To get started, clone the repo:

```
git clone https://github.com/jQwitt/cookbook.git
```

For JavaScript framework flavors, make sure you have `Node / NVM` and a package manager of your choice, `yarn` works out of the box.

Certain scripts may fail due to permission errors, I recommend running `chmod +x ..scripts/init.zsh && .scripts/init.zsh` as this gives execute permissions to `scripts/*.zsh`.

### Create a new Recipie

Run the following script to create a new recipie:

```
cd .scripts && ./create.zsh && cd..
```

You may have to add execute permissions if this fails via `chmod +x .scripts/create.zsh`

The create helper produces the following dialog:

```
Welcome to cookbook!
what should we call your recipie?  { name }
what flavor?  { flavor }
creating new { flavor } project at { current directory }
```

Answering these prompts will create a new recipie (app) of a given flavor (framework) in the same parent directory as **cookbook**.

### Initializing a Recipie

Navigate to the newly created recipie from **cookbook**:

```
cd ../{ name }
```

Run the following commands to perform full setup. (Automation coming soon!)

```javascript
// assume correct node version
nvm use
// install node_modules, create yarn.lock
yarn install

// make sure formatter, linter, and testing is working
yarn format
yarn lint
yarn test
```

For the brave, as one line:
`nvm use && yarn && yarn format && yarn lint && yarn test`

Double check all commands executed successfully, and ta-da you've created your first recipie!
