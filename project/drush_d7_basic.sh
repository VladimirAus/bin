#!/bin/bash
 
if [ "$#" != "1" ]; then
	echo "1 parameter: site URL e.g. sub.site.loc"
	exit
else
  SITEVAR="$1"
	D7VER="7.31"

	drush dl drupal
	mv drupal-$D7VER/ $SITEVAR

	cd $SITEVAR

	mkdir -p sites/all/modules/custom
	mkdir -p sites/all/modules/contrib
	mkdir -p sites/all/libraries

	drush site-install minimal --db-url="mysql://dblogin:dbpass@localhost/dbname" --account-name=admin --account-pass=password  install_configure_form.site_default_country=AU  --yes

	drush en --yes contextual field_ui file image list menu number options taxonomy

	drush vset site_name 'Site Name'
	drush vset configurable_timezones 0
	drush vset date_default_timezone 'Australia/Brisbane'
	drush vset date_first_day '1'

	drush vset user_register '0'
	drush vset user_signatures 0
	drush vset user_pictures 0
	drush vset user_email_verification 0

	# modules
	drush dl admin_menu token admin_views
	drush en --yes admin_menu_toolbar admin_views views_ui

	drush dl features rules
	drush en rules_admin features --yes

	drush dl date entityreference pathauto
	drush en --yes entityreference pathauto date_views date_popup date_tools
	drush vset pathauto_node_pattern '[node:title]'

	# themes
	# drush en --yes seven
	drush vset admin_theme 'seven'
	drush vset theme_default seven
	drush pm-disable --yes bartik

	# Bootstrap
	drush dl jquery_update bootstrap
	drush en --yes jquery_update

	drush vset jquery_update_compression_type 'min'
	drush vset jquery_update_jquery_admin_version '1.7'
	drush vset jquery_update_jquery_cdn 'google'
	drush vset jquery_update_jquery_version '1.9'

	cp -r sites/all/themes/bootstrap/bootstrap_subtheme sites/all/themes/bs3tdin
	mv sites/all/themes/bs3tdin/bootstrap_subtheme.info.starterkit sites/all/themes/bs3tdin/bs3tdin.info 
	drush vset theme_default bs3tdin

	drush dl libraries ckeditor
	drush en --yes libraries ckeditor
	# wget http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.4.3/ckeditor_4.4.3_full.zip 
	# unzip ckeditor_4.4.3_full.zip 
	# rm ckeditor_4.4.3_full.zip 
	# mv ckeditor sites/all/libraries

	# drush dl google_analytics google_adwords
	# drush en --yes googleanalytics google_adwords

	# drush dl filefield_sources
	# drush en --yes filefield_sources
	# drush dl youtube
	# drush en --yes youtube

	# Data sources
	# drush dl eck  views_datasource
	# drush en --yes eck views_json 

fi