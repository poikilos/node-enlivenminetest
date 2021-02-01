#!/bin/bash
find -iname "*.ejs" -not -path "./node_modules/*" -exec ./node_modules/.bin/ejslint {} \;
FOUND_ESLINT_INIT=false
if [ ! -f ".eslintrc.json" ]; then
    FOUND_ESLINT_INIT=true
elif [ ! -f ".eslintrc.js" ]; then
    # ^ this naming is only speculated, but the format is an option
    #   the user can choose interactively during `eslint.js --init`
    FOUND_ESLINT_INIT=true
elif [ ! -f ".eslintrc.yml" ]; then
    # ^ this naming is only speculated, but the format is an option
    #   the user can choose interactively during `eslint.js --init`
    FOUND_ESLINT_INIT=true
fi
if [ "@$FOUND_ESLINT_INIT" != "@true" ]; then
    node ./node_modules/eslint/bin/eslint.js --init
fi
#node ./node_modules/eslint/bin/eslint.js . --ignore-pattern '!node_modules/*' {} \;
#^ still scans node_modules--Don't do that.
#  See [warning File ignored by default. Use
#  "--ignore-pattern '!node_modules/*'" to
#   override](https://github.com/ember-cli/ember-cli-eslint/issues/63).
find -iname "*.js" -not -path "./node_modules/*" -exec node ./node_modules/eslint/bin/eslint.js --ignore-pattern '!node_modules/*' {} \;
