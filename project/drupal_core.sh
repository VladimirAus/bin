#!/bin/bash

if [ "$#" != "2" ]; then
	echo "2 parameter:"
  echo "site URL e.g. sub.site.loc"
  echo "drupal version e.g. 8.0.0-beta1"
	exit
else
  SITEVAR="$1"
	DRUPVER="$2"

	drush dl drupal
	mv drupal-$DRUPVER/ $SITEVAR

	cd $SITEVAR

  drush sql-create --db-su=root --db-su-pw=root --db-url="mysql://root:root@127.0.0.1/$SITEVAR" --yes

  drush site-install minimal --db-url="mysql://root:root@127.0.0.1/$SITEVAR" --account-name=dradmin --account-pass=password  --yes

fi