# MASFAA

MHESAC maintains a website for MASFAA, the Montana Association of Student Financial Aid Administration.

## Table of Contents

- [How to Update This Site](#how-to-update-this-site)
- [How to Update Members and Institutions](#how-to-update-members-and-institutions)
- [Markdown](#markdown)
- [Search](#search)
- [Hosting and DNS](#hosting-and-dns)
- [Other Domain Names](#other-domain-names)
- [Developer Information](#developer-information)

## How to Update This Site

You can update most of the pages on the MASFAA site by editing them using the GitHub web interface. Find the page you want to edit and then click on the :pencil2: icon. Once done editing, add a commit message at the bottom of the page and commit your changes. They are now live! The GitHub web interface allows you to upload files with the "Upload files" button or by dragging and dropping. (Of course, you need write privileges to this repository to commit.)

## How to Update Members and Institutions

To update the [Institutions](http://www.masfaaonline.org/institutions/) and [Members](http://www.masfaaonline.org/members/) pages you need to edit data files rather than the pages themselves. The data files are in [_data](_data) and are in the CSV format. The order of institutions and members in the data file does not matter - they are sorted correctly when the pages are updated.

## Markdown

Most of the pages on this site are written in Markdown (files ending in `.md`). Here are some docs to get you started:

- [Markdown basics](https://help.github.com/articles/markdown-basics/) will cover most of what you need.
- This site uses a variant of Markdown called [kramdown](http://kramdown.gettalong.org/quickref.html) for extra capabilities.

## Search

[Site search](http://www.masfaaonline.org/search) is a **paid** [Google Custom Search Engine](https://cse.google.com/cse/). If there are problems with pages missing from site search log in to CSE to and request re-indexing via the [sitemap](http://www.masfaaonline.org/sitemap.xml).

[Search engine appearance](https://www.google.com/?gws_rd=ssl#q=site:www.masfaaonline.org) can be monitored and administered via [Google Webmaster Tools](https://www.google.com/webmasters/). Remember to keep [robots.txt](robots.txt) updated for pages that should not be indexed.

## Hosting and DNS

Hosted with [Github Pages](https://pages.github.com/) as a [Project Page](https://help.github.com/articles/user-organization-and-project-pages/#project-pages). Domain name is registered at GoDaddy and all DNS is there. DNS consists of two **A** records on `masfaaonline.org` that point to 192.30.252.153 and 192.30.252.154, and a **CNAME** record for `www.masfaaonline.org` that points to `mhesac.github.io`. GitHub handles the redirect from `masfaaonline.org` to `www.masfaaonline.org` so that the site is served at **<www.masfaaonline.org>** according to [best practices](https://help.github.com/articles/about-custom-domains-for-github-pages-sites/).

## Developer Information

- [Site Info](http://www.masfaaonline.org/info)
- [![Circle CI](https://img.shields.io/circleci/project/mhesac/www.masfaaonline.org.svg)](https://circleci.com/gh/mhesac/www.masfaaonline.org)
- [Slack](https://safmt.slack.com/messages/ghpages/)

### How to Work Locally

* [Install rbenv](https://github.com/rbenv/rbenv#installation)
* [Install ruby-build](https://github.com/rbenv/ruby-build#installation)

Clone the repo:
```
> git clone git@github.com:mhesac/www.masfaaonline.org.git
```

Install Jekyll:
```sh
> cd www.masfaaonline.org
> bundle install # same to update
```

Start Jekyll server:

```
> rake
```

Edit and view changes at http://localhost:4000/

Push to the `gh-pages` branch to deploy to production.

Run tests:

```
> rake test
```
