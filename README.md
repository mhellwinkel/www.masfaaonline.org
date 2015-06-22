# MASFAA

## Purpose

SAF hosts a static website for MASFAA, Montana Association of Student Financial Aid Administration.  This site is unnecessarily hosted on a JBoss 7 server.  By moving the content and hosting to GitHub Pages we alleviate ourselves from having to host the site and also provide for easier site updates.  In short, everyone wins!


## Hosting and DNS

TODO

## History

Initial Github Pages site cloned from [`safmt/ghpages`](https://github.com/safmt/ghpages).

Migration of the current MASFAA website [MASFAA](http://www.masfaaonline.org) .

# How to Work Locally

Make sure that you have installed:
* git
* VirtualBox
* Vagrant

Clone the repo:
```
> git clone https://github.com/masfaa/masfaa.github.io.git
```

Start up a virtual machine that is ready for Jekyll:
```
> cd masfaa.github.io
> vagrant up
> vagrant ssh
> cd jekyll
```

[Install Jekyll](https://help.github.com/articles/using-jekyll-with-pages/) (first time only):
```
> bundle install
```

Start Jekyll server:
```
> bundle exec jekyll serve --host 0.0.0.0 --force_polling
```

Edit in the host OS. Find the website at http://192.168.33.10:4000/

Commit changes and push to the master branch to deploy to production.
