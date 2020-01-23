echo '// ProjectInit ver. 0.9 //'
echo 'https://github.com/ilya-mikhaylov/project-init'
echo 'https://raw.githubusercontent.com/gusevroman/project-init/master/init.sh'
echo ''
echo 'This script will download ESLint Airbnb config, create .gitignore and .eslintrc.js in your project folder.'
echo ''

# 'read' lets user to set the value of '$prompt' variable.

# Condition that checks value of '$prompt' variable.


npm init -yes
npm install eslint eslint-config-airbnb-base eslint-plugin-import -D

npm install --save-dev jest
jest --init
mkdir __tests__



# '>>' option of 'cat' adds fragment between two EOFs to the end to .gitignore. Creates new one, if it doesn't exist.

cat >> .eslintrc.js << EOF
module.exports = {
    "extends": "airbnb-base",
    "env": {
        "browser": true
    }
}
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
