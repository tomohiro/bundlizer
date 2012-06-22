Bundlizer
================================================================================
The Bundlizer is Bundler apps management tool from the command line. _DO NOT USE sudo_

---

Requirements
--------------------------------------------------------------------------------

- OSX or Ubuntu
- Git
- Ruby 1.9.3+
- Bundler 1.1+



Setup
--------------------------------------------------------------------------------

### Installation

To install the Bundlizer, open a terminal and run this command

    $ curl -L git.io/bundlizer-install | sh

Source `~/.bundlizer/etc/bashrc` in your `~/.bash_profile` or `~/.zshenv`

    $ echo 'source $HOME/.bundlizer/etc/bashrc' >> ~/.bash_profile

Restart your shell or `exec $SHELL`


### Upgrade the Bundlizer

    $ bundlizer upgrade


### Uninstall the Bundlizer

    $ rm -rf ~/.bundlizer


Usage
--------------------------------------------------------------------------------

### Install Bundler apps from GitHub repository

1. Install

    e.g. `git://github.com/heroku/heroku.git`

        $ bundlizer install heroku/heroku
        Cloning into heroku...
        remote: Counting objects: 9595, done.
        remote: Compressing objects: 100% (3304/3304), done.
        remote: Total 9595 (delta 6435), reused 9094 (delta 5994)
        Receiving objects: 100% (9595/9595), 1.18 MiB | 316 KiB/s, done.
        Resolving deltas: 100% (6435/6435), done.

        Start bundle installing to /home/tomohiro/.bundlizer/bundles/heroku
        Fetching gem metadata from http://rubygems.org/.........
        Installing rake (0.9.2)
        ..snip..
        Using heroku (2.18.1) from source at .
        ..snip..
        Installing webmock (1.7.7)
        Using bundler (1.1.rc.7)
        Your bundle is complete! It was installed into ./vendor/bundle
        It was installed `heroku` into /home/tomohiro/.bundlizer/apps/heroku

2. You don't need `bundle` command. You can use `foo` instead of `bundle exec foo`

        $ type heroku
        heroku is /home/tomohiro/.bundlizer/apps/heroku
        $ heroku version
        heroku-gem/2.19.0



### Show installed bundler apps

    $ bundlizer list
    Bundler apps installed by the Bundlizer:
     * foreman (git://github.com/ddollar/foreman.git)
         apps: foreman,runner
     * github-gem (git://github.com/defunkt/github-gem.git)
         apps: gh,github
     * guard (git://github.com/guard/guard.git)
         apps: guard
     * heroku (git://github.com/heroku/heroku.git)
         apps: heroku
     * pry (git://github.com/pry/pry.git)
         apps: pry
     * vmc (git://github.com/cloudfoundry/vmc.git)
         apps: vmc
     * yard (git://github.com/lsegal/yard.git)
         apps: yard,yardoc,yri


### Update bundler apps

#### Update the named app

    $ bundlizer update heroku

#### Update all apps

    $ bundlizer update


### Uninstall

    $ bundlizer uninstall heroku
    uninstall: remove app 'heroku'? (yes/no) yes
    rm -f /home/tomohiro/.bundlizer/apps/heroku
    rm -rf /home/tomohiro/.bundlizer/bundles/heroku
    It was Uninstalled 'heroku'



---

LICENSE
--------------------------------------------------------------------------------

&copy; 2012 Tomohiro, TAIRA.
This project is licensed under the MIT license.
See LICENSE for details.
