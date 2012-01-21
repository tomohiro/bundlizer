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

### Install

1. Clone the Bundlizer into `~/.bundlizer`

        $ cd
        $ git clone git://github.com/Tomohiro/bundlizer.git .bundlizer

2. Source `~/.bundlizer/etc/bashrc` in your `~/.bash_profile` or `~/.zshenv`

        $ echo 'source $HOME/.bundlizer/etc/bashrc' >> ~/.bash_profile

3. Restart your shell



Usage
--------------------------------------------------------------------------------

### Upgrade the Bundlizer

    $ cd .bundlizer
    $ git pull origin master


### Deploy Bundler project

1. Clone a repository

        $ cd .bundlizer/bundles
        $ git clone git://github.com/heroku/heroku.git
        $ git clone git://github.com/defunkt/github-gem.git

2. Run `bundlizer`

        $ bundlizer

3. You don't need bundler command. You can use `foo` instead of `bundle exec foo`

        $ type heroku
        heroku is /home/tomohiro/.bundlizer/bundles/bin/heroku
        $ heroku version
        heroku-gem/2.18.1

        $ type github
        github is /home/tomohiro/.bundlizer/bundles/bin/github
        $ github version
        git version 1.7.4.1



---

LICENSE
--------------------------------------------------------------------------------

This project is licensed under the MIT license.
See LICENSE for details.
