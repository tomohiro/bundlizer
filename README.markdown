Bundlizer
================================================================================


Installation and setup
--------------------------------------------------------------------------------

1. Clone `bundlizer` and copy to the `$HOME/bin` or `/usr/local/bin`

        $ git clone git://github.com/Tomohiro/bundlizer.git
        $ cd bundlizer
        $ cp bundlizer ~/bin


2. Configuration

        $ vi .bashrc
        export PATH=$HOME/.bundles/bin:$PATH
        $ source .bashrc


Usage
--------------------------------------------------------------------------------

1. Create `$HOME/.bundles/bin` directory

        $ mkdir -p ~/.bundles/bin

2. Clone a RubyGems repository from the GitHub

        $ cd ~/.bundles/
        $ git clone git://github.com/heroku/heroku ~/.bundles/heroku
        Cloning into '.bundles/heroku'...
        remote: Counting objects: 9554, done.
        remote: Compressing objects: 100% (3195/3195), done.
        remote: Total 9554 (delta 6404), reused 9149 (delta 6060)
        Receiving objects: 100% (9554/9554), 1.18 MiB | 201 KiB/s, done.
        Resolving deltas: 100% (6404/6404), done.

3. Execute `bundlizer`

        $ bundlizer
        Fetching gem metadata from http://rubygems.org/.........
        Installing rake (0.9.2) 
        ..snip..
        Using heroku (2.18.1) from source at . 
        ..snip..
        Using bundler (1.1.rc.7) 
        Your bundle is complete! It was installed into ./vendor/bundle
        Install `heroku` to /Users/tomohiro/.bundles/bin

        $ which heroku
        /Users/tomohiro/.bundles/bin/heroku
        $ heroku version
        heroku-gem/2.18.1


Example
--------------------------------------------------------------------------------

### Using `hub`

    $ cd ~/.bundles
    $ hub clone cloudfoundry/vmc
    $ bundlizer
    $ which vmc
    /Users/tomohiro/.bundles/bin/vmc
    $ vmc verion
    vmc 0.3.16.beta.2


---

LICENSE
--------------------------------------------------------------------------------

This project is licensed under the MIT license.
See LICENSE for details.
