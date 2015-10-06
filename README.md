# Purpose

SAF maintains a website for MASFAA, the Montana Association of Student Financial Aid Administration.

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
> git clone git@github.com:safmt/www.masfaaonline.org.git
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
