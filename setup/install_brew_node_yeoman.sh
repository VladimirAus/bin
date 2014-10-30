#!/bin/bash

# Install nodeJS
brew install node
sudo npm install -g yo

#fix permissions
sudo chown -R VladimirAus /Users/VladimirAus/.npm/ 

#all grunt dependancies
npm install --save-dev connect-livereload
npm install time-grunt
npm install load-grunt-tasks
npm install jshint-stylish
npm install grunt-autoprefixer
npm install grunt-contrib-clean
npm install grunt-contrib-concat
npm install grunt-contrib-connect
npm install grunt-contrib-copy
npm install grunt-contrib-cssmin
npm install grunt-contrib-imagemin
npm install grunt-contrib-jshint
npm install grunt-contrib-uglify
npm install grunt-contrib-watch
npm install grunt-minify-html
npm install grunt-open
npm install grunt-pagespeed
npm install grunt-rev
npm install grunt-sass
npm install grunt-usemin
npm install grunt-vulcanize