[![Circle CI](https://img.shields.io/circleci/project/mhesac/www.masfaaonline.org.svg)](https://circleci.com/gh/mhesac/www.masfaaonline.org)

# Purpose

MHESAC maintains a website for MASFAA, the Montana Association of Student Financial Aid Administration.

# How to Update This Site

You can update most of the pages on the MASFAA site by editing them using the GitHub web interface. Find the page you want to edit and then click on the :pencil2: icon. Once done editing, add a commit message at the bottom of the page and commit your changes. They are now live! (Of course, you need write privileges to this repository to commit.)

# How to Update Members Institutions

To update the [Institutions](http://www.masfaaonline.org/institutions/) and [Members](http://www.masfaaonline.org/members/) pages you need to edit data files rather than the pages themselves. The data files are in [_data](_data) and are in the CSV format. The order of institutions and members in the data file does not matter - they are sorted correctly when the pages are updated.

# Markdown

Most of the pages on this site are written in Markdown (files ending in `.md`). Here are some docs to get you started:

- [Markdown basics](https://help.github.com/articles/markdown-basics/) will cover most of what you need.
- This site uses a variant of Markdown called [kramdown](http://kramdown.gettalong.org/quickref.html) for extra capabilities.

# Hosting

Hosted with [Github Pages](https://pages.github.com/) as a [Project Page](https://help.github.com/articles/user-organization-and-project-pages/#project-pages).

# DNS

Domain name is registered at GoDaddy and all DNS is there. According to [best practices](https://help.github.com/articles/about-custom-domains-for-github-pages-sites/) the "www" version of the domain is the official version. A CNAME record for `www.masfaaonline.org` points to `mhesac.github.io` and A records point to IP addresses at Github which handle redirection to `www.masfaaonline.org`.

# How to Work Locally

Make sure that you have installed:
* git
* VirtualBox
* Vagrant

Clone the repo:
```
> git clone git@github.com:mhesac/www.masfaaonline.org.git
```

Start up a virtual machine with Jekyll installed. The machine will take a while to provision on the first start.
```
> cd www.masfaaonline.org
> vagrant up
> vagrant ssh
> cd jekyll
```

Start Jekyll server:
```
> bundle exec jekyll serve --force_polling
```

Edit in the host OS. Find the website at http://192.168.33.10:4000/

Commit changes and push to the gh-pages branch to deploy to production.
