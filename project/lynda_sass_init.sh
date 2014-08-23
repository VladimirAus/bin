touch index.html
touch package.json
echo '{' >> package.json
echo '	"name": "project",' >> package.json
echo '	"version": "0.0.1",' >> package.json
echo '	"dependacies" : {' >> package.json
echo '		"grunt": "~0.4.1",' >> package.json
echo '		"grunt-contrib-watch": "~0.5.3",' >> package.json
echo '		"grunt-contrib-compass": "~0.5.0",' >> package.json
echo '		"grunt-contrib-uglify": "~0.2.2",' >> package.json
echo '		"matchdep": "~0.1.2"' >> package.json
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