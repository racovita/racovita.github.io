# Skeleton for EGR foundation website

The structure of the site is designed to support mulitlanguage
publishing.  Each language has a top level directory, e.g., 'en',
'ro', etc. All the navigation appends the referring page language to
form the URL for the descendent page. There are two choices in adding
contents to one of these files:

1. Add the contents verbatim in the page language. This works well for pages that are mainly text and do not share elements with the pages in other languages, for example the biography.

1. Add the contents in the _include directory using translations in _data/xlate.yml and then include that file in page.md in the language directory.
