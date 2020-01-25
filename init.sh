echo '// ProjectInit ver. 1.0.1 //'
echo ''
echo 'https://github.com/ilya-mikhaylov/project-init'
echo 'https://raw.githubusercontent.com/gusevroman/project-init/master/init.sh'
echo ''
echo 'https://github.com/gusevroman/project-init'
echo 'https://raw.githubusercontent.com/gusevroman/project-init/master/init.sh'
echo ''
echo 'This script will download ESLint Airbnb config, create .gitignore' 
echo 'and .eslintrc.js, edite package.json in your project folder.'
echo ''

# 'read' lets user to set the value of '$prompt' variable.

# Condition that checks value of '$prompt' variable.

# install ESLint Airbnb config
npm init -yes
npm install eslint eslint-config-airbnb-base eslint-plugin-import -D

# install Jest and make dit __tests__
npm install --save-dev jest
jest --init
mkdir __tests__

# install json for edite package.json
npm install --save-dev json
npx json -I -f package.json -e 'this.scripts.test="jest"'

# '>>' option of 'cat' adds fragment between two EOFs to the end to .gitignore. Creates new one, if it doesn't exist.

cat >> .eslintrc.js << EOF
module.exports = {
    "extends": "airbnb-base",
    "env": {
        "browser": true
    }
}
EOF

cat >> package.json << EOF
EOF

cat >> .gitignore << EOF
*.log
.vscode
.idea
.eslintrc.js
node_modules
lib
YourSpecRunner.html
spec
EOF


echo 'All done.'
