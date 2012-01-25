Bundlizer [![Still Maintained](http://stillmaintained.com/Tomohiro/bundlizer.png)](http://stillmaintained.com/Tomohiro/bundlizer)
================================================================================



Requirements
--------------------------------------------------------------------------------

- OSX or Ubuntu
- Git
- Ruby 1.9+
- RubyGems
- Bundler



Installation
--------------------------------------------------------------------------------

1. Run this command

        $ curl -L http://git.io/bundlizer-install | sh

2. Source `~/.bundlizer/etc/bashrc` in your `~/.bash_profile` or `~/.zshenv`

        $ echo 'source $HOME/.bundlizer/etc/bashrc' >> ~/.bash_profile

3. Restart your shell or `exec $SHELL`



Usage
--------------------------------------------------------------------------------

### Install RubyGems project from GitHub repository

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
        It was installed `heroku` into /home/tomohiro/.bundlizer/bundles/bin/heroku

2. You don't need `bundle` command. You can use `foo` instead of `bundle exec foo`

        $ type heroku
        heroku is /home/tomohiro/.bundlizer/bundles/bin/heroku
        $ heroku version
        heroku-gem/2.18.1

        $ type github
        github is /home/tomohiro/.bundlizer/bundles/bin/github
        $ github version
        git version 1.7.4.1


### Update repositories

1. Update the named repository

        $ bundlizer update heroku

2. Update all cloned repositories

        $ bundlizer update


### Uninstall

TODO



### Upgrade the Bundlizer

    $ cd .bundlizer
    $ git pull origin master



---

LICENSE
--------------------------------------------------------------------------------

This project is licensed under the MIT license.
See LICENSE for details.
