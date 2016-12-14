# MASFAA

MHESAC maintains a website for MASFAA, the Montana Association of Student Financial Aid Administration.

## Table of Contents

- [How to Update This Site](#how-to-update-this-site)
- [How to Update Members and Institutions](#how-to-update-members-and-institutions)
- [How to Update Downloads](#how-to-update-downloads)
- [Markdown](#markdown)
- [Search](#search)
- [Hosting and DNS](#hosting-and-dns)
- [Other Domain Names](#other-domain-names)
- [Developer Information](#developer-information)

## How to Update This Site

You can update most of the pages on the MASFAA site by editing them using the GitHub web interface. Find the page you want to edit and then click on the :pencil2: icon. Once done editing, add a commit message at the bottom of the page and commit your changes. They are now live! The GitHub web interface allows you to upload files with the "Upload files" button or by dragging and dropping. (Of course, you need write privileges to this repository to commit.)

## How to Update Members and Institutions

To update the [Institutions](http://www.masfaaonline.org/institutions/) and [Members](http://www.masfaaonline.org/members/) pages you need to edit data files rather than the pages themselves. The data files are: [_data/institutions.csv](_data/institutions.csv) and [_data/members.csv](_data/members.csv) and are in CSV format.

*The order of records in the data files does not matter. The items will be correctly sorted when displayed.*

## How to Update Downloads

Lists of downloads for files, history, minutes and NT4CM reports are stored in data files. To edit, upload the file(s) to the correct directory and then edit the corresponding data file.

*The order of records in the data files is the order in which the files will be displayed.*

### How to Update Files

1. Add files to the [documents/downloads](documents/downloads) directory. The GitHub web interface allows you to upload files by dragging and dropping.

2. Edit the [files data file](_data/files.yml). The file is in [YAML](https://github.com/planetjekyll/quickrefs/blob/master/YAML.md) format.

### How to Update History

1. Add history downloads to the [documents/downloads](documents/downloads) directory. The GitHub web interface allows you to upload files by dragging and dropping.

2. Edit the [history data file](_data/history.yml). The file is in [YAML](https://github.com/planetjekyll/quickrefs/blob/master/YAML.md) format.

### How to Update Minutes

1. Add minutes to the [governance/downloads](governance/downloads) directory. The GitHub web interface allows you to upload files by dragging and dropping.

2. Edit the [minutes data file](_data/minutes.yml). The file is in [YAML](https://github.com/planetjekyll/quickrefs/blob/master/YAML.md) format.

### How to Update NT4CM Reports

1. Add reports to the [nt4cm/downloads](nt4cm/downloads) directory. The GitHub web interface allows you to upload files by dragging and dropping.

2. Edit the [reports data file](_data/reports.yml). The file is in [YAML](https://github.com/planetjekyll/quickrefs/blob/master/YAML.md) format.

## Markdown

Most of the pages on this site are written in Markdown (files ending in `.md`). Here are some docs to get you started:

- [Markdown basics](https://help.github.com/articles/markdown-basics/) will cover most of what you need.
- This site uses a variant of Markdown called [kramdown](http://kramdown.gettalong.org/quickref.html) for extra capabilities.

## Search

[Site search](http://www.masfaaonline.org/search) is a **paid** [Google Custom Search Engine](https://cse.google.com/cse/). If there are problems with pages missing from site search log in to CSE to request re-indexing via the [sitemap](http://www.masfaaonline.org/sitemap.xml).

[Search engine appearance](https://www.google.com/?gws_rd=ssl#q=site:www.masfaaonline.org) can be monitored and administered via [Google Webmaster Tools](https://www.google.com/webmasters/). Use [robots.txt]((http://www.masfaaonline.org/robots.txt) to indicate pages that should not be indexed.

## Hosting and DNS

Hosted with [Github Pages](https://pages.github.com/) as a [Project Page](https://help.github.com/articles/user-organization-and-project-pages/#project-pages). Domain name is registered at GoDaddy and all DNS is there. DNS consists of two **A** records on `masfaaonline.org` that point to 192.30.252.153 and 192.30.252.154, and a **CNAME** record for `www.masfaaonline.org` that points to `mhesac.github.io`. GitHub handles the redirect from `masfaaonline.org` to `www.masfaaonline.org` so that the site is served at **<www.masfaaonline.org>** according to [best practices](https://help.github.com/articles/about-custom-domains-for-github-pages-sites/).

## Developer Information

- [Site Info](http://www.masfaaonline.org/info)
- [![Circle CI](https://img.shields.io/circleci/project/mhesac/www.masfaaonline.org.svg)](https://circleci.com/gh/mhesac/www.masfaaonline.org)
- [Slack](https://safmt.slack.com/messages/ghpages/)

### How to Work Locally on Linux/MacOS

* [Install rbenv](https://github.com/rbenv/rbenv#installation)
* [Install ruby-build](https://github.com/rbenv/ruby-build#installation)

Clone the repo:
```
> git clone git@github.com:mhesac/www.masfaaonline.org.git
```

Install Jekyll:
```sh
> cd www.masfaaonline.org
> bundle install
```

Start Jekyll server:

```
> rake
```

Edit and view changes at http://localhost:4000/

Push to the `master` branch to deploy to production.

Run tests:

```
> rake test
```
