# Skeleton for EGR foundation website

The structure of the site is designed to support mulitlanguage
publishing.  Each language has a top level directory, e.g., 'en',
'ro', etc. All the navigation appends the referring page language to
form the URL for the descendent page. There are two choices in adding
contents to one of these files:

1. Add the contents verbatim in the page language. This works well for
pages that are mainly text and do not share elements with the pages in
other languages.

1. Add the contents in the _include directory and simply include it in
the page. This relies on the ability to programmatically add text in
the specific language. This works well when the page
elements/variables are translated, either in the front matter for the
page, or as part of a different structured file. See for example
`_data/menu.yml` and how it is used in `_includes/nav_menu.html`.


# TODO

## Layout

- language menu positioning
- nav menu on the left, contents in the middle

## Navigation

- language translation to go to same page rather than index

## Contents

- Racovita's life with a focus on scientific accomplishments
  - list of accomplishments

- Leadership list
