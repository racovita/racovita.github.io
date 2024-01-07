#! /bin/bash

set -e

TEST_SITE="http://test-web.racovita-foundation.org:88"
REAL_SITE="https://www.racovita-foundation.org"

sedcmd="sed -i"
if [[ $(uname -s) == "Darwin" ]]; then
  sedcmd="${sedcmd} ''"
fi

# replace the site URL with the test URL
${sedcmd} -e "s?url: \"$REAL_SITE\"?url: \"$TEST_SITE\"?" _config.yml
bundle exec jekyll build
${sedcmd} -e "s?url: \"$TEST_SITE\"?url: \"$REAL_SITE\"?" _config.yml
rsync -avzu --delete --exclude="Cache" _site/ saga.local:/var/www/racovita/
