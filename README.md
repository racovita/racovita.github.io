# Skeleton for EGR foundation website

The structure of the site is designed to support mulitlanguage
publishing.  Each language has a top level directory, e.g., `en`,
`ro`, and `fr`.  The default language is `ro`.

Navigation should seamlessly change the language of the existing page. This works as long as the page is present in the selected language. There are several choices in creating pages in a language:

1. Add a page in the language directory and put the contents verbatim in the page language. This works well for pages that are mainly text and do not share elements with the pages in other languages, for example the biography.

1. Add the contents in the _include directory using translations in `_data/xlate.yml` and then include that file in a page in the language directory.

1. Posts are structured differently: there is a top level directory under `_posts/` for the post, and a separate language file, named following the Jekyll post naming convention: `<date>-<name>-<lang>.md`.

## Layouts

We have a set of layouts that can be used to format pages, as follows:

1. `home` -- specialized layout for the homepage. Contains elements that are fixed.
1. `page` -- a basic page layout with padding to ensure that the text is visible
1. `post` -- layout for posts. Has additional margins compared to `page`.
1. `collection` -- a layout to shows a set of categories as a grid of cards. Defines the top level div as an `album`.
1. `photos` -- a layout to show a set of photos. Defines the top level div as an `c4-photo-album`.
1. `flow` -- a layout that enables inline images that are floated. See the `ro/EmilRacovita_bio.md` for an example.
1. `pubs` -- used for publication. Defines the top div of class `c4-pubs` to customize lists as alternating bands and has custom list numbering. Why not define the class for inner divs? I don't remember!
1. `default` -- everything else.

## Attributes

Posts (and pages) define the following attributes that are used to customize the contents displayed:

1. `lang`: defines the language for the page. Used to select from translation files.
1. `layout`: defines the layout to use.
1. `title`:  displayed as a left-aligned subtitle in the banner, or as the title for a card, or as a heading on the page (the natural use of titles!).
1. `no_subtitle`: disables displaying the title in the banner.
1. `banner`: path to an image to be displayed as a banner for the page.
1.  `card_banner`: path to an image to be displayed as the card top (or side) for an event, gallery, or other things that use cards.
1. `youtube`: alternative card banner that shows a youtube video.
1. `description`: paragraph to be shown as a summary of the page. For events, this is the snippet displayed on a card.
1. `ref`: Groups together pages for navigation and the sitemap. Also used for photo collections to identify the set of photos to be displayed.
1. `date_range`: used for posts to specify an event that spans multiple days.
1. `keywords`: generate a list of keywords to enable search.

## Styling

TBW.
