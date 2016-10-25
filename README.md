pman
====

This package provides **pman**, the [PHP
manual](http://fr.php.net/download-docs.php) in \*nix style man pages, via
Composer and Packagist.


Installation
------------

1) This package SHOULD be installed **globally**:

    composer global require willdurand/pman:dev-master

2) Then, add `$COMPOSER_HOME/vendor/willdurand/pman/bin` to your `$PATH`.

`$COMPOSER_HOME` is often `~/.composer`, but it may be different depending on
your operating system or configuration.  Also, it is important to use such a
path and not, for instance, `.composer/vendor/bin`.


Usage
-----

1) First, you have to fetch the documentation. This can be done time to time or
only once, but it MUST be run at least once.

    sync-pman

This script relies on [Docker](https://www.docker.com/). In case you want to
clear Docker's cache, you can pass the `--no-cache` option to this script:

    sync-pman --no-cache

2) Run `pman` to display documentation (like you would do with `man`):

    pman strlen


Why?
----

I stumbled upon [this
article](http://dailyvim.blogspot.fr/2008/08/making-k-useful.html) (and a few
others as well), explaining how to leverage `K` command in
[`vim`](https://github.com/willdurand/vim-config). I decided to use this command
rather than [my plain old way to display PHP manual
entries](https://github.com/willdurand/vim-config/blob/40c39392afac3960aef6ac80320ddc172a0257c3/vim/ftplugin/php.vim#L1-L2).

I don't use PEAR on my system, that is why I relied on Docker to fetch the PEAR
package. Also, adding a script to fetch (and synchronize) the documentation
rather than versioning all the files (as done
[here](https://github.com/gonzaloserrano/pman-php-manual)) seemed better to me.


License
-------

(willdurand's) pman is released under the MIT License. See the bundled LICENSE
file for details. Note that `pman`, the original package from PEAR, has its own
license.
