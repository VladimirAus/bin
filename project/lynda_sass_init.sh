touch index.html
touch package.json
echo '{' >> package.json
echo '	"name": "project-name",' >> package.json
echo '	"version": "0.0.1",' >> package.json
echo '	"dependacies" : {' >> package.json
echo '		"grunt": "~0.4.5",' >> package.json
echo '		"grunt-contrib-watch": "~0.6.1",' >> package.json
echo '		"grunt-contrib-compass": "~0.9.1",' >> package.json
echo '		"grunt-contrib-uglify": "~0.5.1",' >> package.json
echo '		"matchdep": "~0.3.0"' >> package.json
echo '	}' >> package.json
echo '}' >> package.json
mkdir -p _/components/sass
mkdir -p _/components/js
mkdir -p _/js
mkdir -p _/css
mkdir -p node_modules
touch _/js/script.js
touch _/css/styles.css
touch _/components/sass/styles.scss