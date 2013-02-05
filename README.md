Bundlizer
================================================================================

The Bundlizer is RubyGems and Bundler apps management tool from the command line. _DO NOT NEED sudo_

[![Dependency Status](https://gemnasium.com/Tomohiro/bundlizer.png)](https://gemnasium.com/Tomohiro/bundlizer)
[![Build Status](https://travis-ci.org/Tomohiro/bundlizer.png?branch=master)](https://travis-ci.org/Tomohiro/bundlizer)
[![Stillmaintained](http://stillmaintained.com/Tomohiro/bundlizer.png)](http://stillmaintained.com/Tomohiro/bundlizer)


Table of Contents
--------------------------------------------------------------------------------

- [Requirements](#requirements)
- [Getting Started](#getting-started)
    - [Installation](#installation)
    - [Upgrade the Bundlizer](#upgrade-the-bundlizer)
    - [Uninstall the Bundlizer](#uninstall-the-bundlizer)
- [Basic Usage](#basic-usage)
    - [Install Gem apps from RubyGems.org](#install-gem-apps-from-rubygemsorg)
    - [Install Bundler apps from GitHub Repository](#install-bundler-apps-from-github-repository)
    - [Set the local application-specific Ruby version](#set-the-local-application-specific-ruby-version)
    - [Show the installed apps](#show-the-installed-apps)
    - [Show the dependencies of an installed app](#show-the-dependencies-of-an-installed-app)
    - [Add dependent gem to the app](#add-dependent-gem-to-the-app)
    - [Update apps](#update-apps)
    - [Uninstall](#uninstall)
- [Tips](#tips)
    - [Install autocompletion](#install-autocompletion)
    - [Backup and Restore app list](#backup-and-restore-app-list)
- [LICENSE](#license)


---


Requirements
--------------------------------------------------------------------------------

- OSX or Ubuntu
- Git
- Bundler 1.1 or later


Getting Started
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


Basic Usage
--------------------------------------------------------------------------------

### Install Gem apps from RubyGems.org

Install (e.g. Ruby on Rails: https://rubygems.org/gems/rails)

    $ bundlizer install rails
    Searching in RubyGems...
    Fetching: i18n-0.6.0.gem (100%)
    Fetching: multi_json-1.3.6.gem (100%)
    Fetching: activesupport-3.2.6.gem (100%)
    Fetching: builder-3.0.0.gem (100%)
    Fetching: activemodel-3.2.6.gem (100%)
    Fetching: rack-1.4.1.gem (100%)
    Fetching: rails-3.2.6.gem (100%)
    ..snip..
    Successfully installed builder-3.0.0
    Successfully installed activemodel-3.2.6
    Successfully installed rack-1.4.1
    Successfully installed rails-3.2.6
    26 gems installed
    It was installed 'erubis' into /home/tomohiro/.bundlizer/apps/erubis
    It was installed 'rackup' into /home/tomohiro/.bundlizer/apps/rackup
    It was installed 'rails' into /home/tomohiro/.bundlizer/apps/rails
    It was installed 'rake2thor' into /home/tomohiro/.bundlizer/apps/rake2thor
    It was installed 'thor' into /home/tomohiro/.bundlizer/apps/thor
    It was installed 'tilt' into /home/tomohiro/.bundlizer/apps/tilt
    It was installed 'tt' into /home/tomohiro/.bundlizer/apps/tt



You can start a rails project as usual

    $ rails -v
    Rails 3.2.6
    $ rails new awesome-project
    $ cd awesome-project
    $ bundle install --path gems
    $ rails s
    => Booting WEBrick
    => Rails 3.2.6 application starting in development on http://0.0.0.0:3000
    => Call with -d to detach
    => Ctrl-C to shutdown server
    [2012-07-12 19:54:49] INFO  WEBrick 1.3.1
    [2012-07-12 19:54:49] INFO  ruby 1.9.3 (2012-04-20) [i686-linux]
    [2012-07-12 19:54:49] INFO  WEBrick::HTTPServer#start: pid=1479 port=3000


### Install Bundler apps from GitHub repository

Install (e.g. heroku: `git://github.com/heroku/heroku.git`)

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

You don't need `bundle` command. You can use `<cmd>` instead of `bundle exec <cmd>`

    $ type heroku
    heroku is /home/tomohiro/.bundlizer/apps/heroku
    $ heroku version
    heroku-gem/2.19.0


### Set the local application-specific Ruby version

Use the `rbenv local` command by [rbenv](https://github.com/sstephenson/rbenv).

Set 2.0.0-preview1

    $ bundlizer use 2.0.0-preview1 heroku
    Use 2.0.0-preview1 at heroku


Set 1.9.3-p362

    $ bundlizer use 1.9.3-p362 rails
    Use 1.9.3-p362 at rails


Unset

    $ bundlizer use --unset rails
    Unset local Ruby version at rails


### Show the installed apps

    $ bundlizer list --verbose
    Gem/Bundler apps installed by the Bundlizer:

     * foreman (rubygems.org: http://rubygems.org/gems/foreman)
          apps: foreman,rake2thor,thor
     * guard (git://github.com/guard/guard.git)
         apps: guard
     * heroku (git://github.com/heroku/heroku.git)
         apps: heroku
         ruby: 2.0.0-preview1
     * pry (git://github.com/pry/pry.git)
         apps: pry
         ruby: 1.9.3-p362
     * rails (rubygems.org: http://rubygems.org/gems/rails)
          apps: erubis,rackup,rails,rake2thor,thor,tilt,tt
     * yard (git://github.com/lsegal/yard.git)
         apps: yard,yardoc,yri


### Show the dependencies of an installed app

    $ bundlizer depends rails


### Add dependent gem to an app

Example: add `veewee` gem to the `vagrant` app.

    $ bundlizer install vagrant
    $ bundlizer depends vagrant --add-gem veewee


Example: add `net-ssh`, `net-scp` gem to the `backup` app.

    $ bundlizer install backup
    $ bundlizer depends backup --add-gem net-ssh -v '~> 2.3.0'
    $ bundlizer depends backup --add-gem net-scp -v '~> 1.4.0'


### Update apps

Update the app

    $ bundlizer update heroku

Update all apps

    $ bundlizer update


### Uninstall

    $ bundlizer uninstall heroku
    uninstall: remove app 'heroku'? (yes/no) yes
    rm -f /home/tomohiro/.bundlizer/apps/heroku
    rm -rf /home/tomohiro/.bundlizer/bundles/heroku
    It was Uninstalled 'heroku'



Tips
--------------------------------------------------------------------------------

### Install autocompletion

Sourcing `~/.bundlizer/completions/bundlizer.zsh` will set up that, for Zsh users.

    $ echo 'source "$HOME/.bundlizer/completions/bundlizer.zsh"' >> ~/.zshenv


### Backup and Restore app list

Backup installed app list

    $ bundlizer list | tail -n +3 > ~/bundlizer_installed_apps

Reinstall app from backup installed app list

    $ cat ~/bundlizer_installed_apps | xargs bundlizer install


---

LICENSE
--------------------------------------------------------------------------------

&copy; 2012 - 2013 Tomohiro TAIRA.
This project is licensed under the MIT license.
See LICENSE for details.
