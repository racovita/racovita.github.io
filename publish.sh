#! /bin/bash

set -e

# THEME_PATH="../c4-theme-jekyll"
TEST_SITE="http://test-web.racovita-foundation.org:88"
REAL_SITE="https://www.racovita-foundation.org"

# pushd $THEME_PATH
# bundle exec jekyll build
# popd

# replace the site URL with the test URL
sed -i -e "s?url: \"$REAL_SITE\"?url: \"$TEST_SITE\"?" _config.yml
bundle exec jekyll build
sed -i -e "s?url: \"$TEST_SITE\"?url: \"$REAL_SITE\"?" _config.yml
rsync -avz _site/ saga.local:/var/www/racovita/
